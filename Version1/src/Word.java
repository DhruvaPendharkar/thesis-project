import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by dhruv on 9/24/2017.
 */
public class Word {

    public static final Word DESCRIPTION_PROPERTY = new Word(0, "_description", "_description", "FW");
    public static final Word VARIABLE_X = new Word(0, "X", "X", "FW");

    private String word;
    private int wordIndex;
    private String POSTag;
    private String lemma;
    private HashMap<String, List<Word>> relationMap;

    Word(int wordIndex, String word, String lemma, String POSTag){
        this.wordIndex = wordIndex;
        this.word = word;
        this.POSTag = POSTag;
        this.lemma = lemma;
        this.relationMap = new HashMap<>();
    }

    @Override
    public String toString() {
        return String.format("%s-%s", this.word, this.wordIndex);
    }

    public void addDependency(Word dependentWord, String relation) {
        if(dependentWord == null){
            return;
        }

        if(!this.relationMap.containsKey(relation)){
            this.relationMap.put(relation, new ArrayList<>());
        }

        List<Word> dependencies = this.relationMap.get(relation);
        dependencies.add(dependentWord);
        this.relationMap.put(relation, dependencies);
    }

    public String getPOSTag(){
        return this.POSTag;
    }

    public List<Rule> GetRuleByRelationPair(String depRelation, String indepRelation, boolean isQuestion){
        Word independantWord = null;
        List<Literal> dependantLiterals = new ArrayList<>();
        List<Rule> rules = new ArrayList<>();
        if(this.relationMap.containsKey(depRelation) && this.relationMap.get(depRelation).size() > 0){
            List<Word> dependantWords = this.relationMap.get(depRelation);
            for(Word word : dependantWords){
                Word currentWord = word;
                word = GetCompoundBaseWord(currentWord);
                Literal literal = new Literal(word);
                if(!word.relationMap.containsKey("case")) {
                    dependantLiterals.add(literal);
                    continue;
                }

                Literal baseLiteral = new Literal(word);
                List<Literal> literalList = new ArrayList();
                literalList.add(baseLiteral);
                List<Word> prepositions = word.relationMap.get("case");
                for (Word preposition : prepositions){
                    literal = new Literal(preposition, literalList);
                    dependantLiterals.add(literal);
                }
            }
        }

        if(this.relationMap.containsKey(indepRelation) && this.relationMap.get(indepRelation).size() > 0){
            independantWord = this.relationMap.get(indepRelation).get(0);
        }

        if(dependantLiterals == null || dependantLiterals.size() == 0 || independantWord == null){
            return null;
        }

        Literal independantLiteral = new Literal(independantWord);
        for(Literal dependantLiteral : dependantLiterals) {
            List<Literal> terms = new ArrayList<>();
            terms.add(independantLiteral);
            terms.add(dependantLiteral);
            Literal fact = new Literal(this, terms);
            Rule rule = new Rule(fact, isQuestion);
            rules.add(rule);
        }

        return rules;
    }

    public List<Rule> GetAdjectiveRule() {
        if(!this.relationMap.containsKey("amod")){
            return null;
        }

        Word currentWord = GetCompoundBaseWord(this);
        List<Literal> baseLiteralList = new ArrayList<>();
        Literal literal = new Literal(currentWord);
        baseLiteralList.add(literal);
        List<Rule> rules = new ArrayList<>();
        List<Word> words = this.relationMap.get("amod");
        for(Word word : words) {
            List<Literal> genLiteralList = new ArrayList<>();
            genLiteralList.add(new Literal(VARIABLE_X));
            Literal adjFact = new Literal(word, baseLiteralList);
            Literal genAdjFact = new Literal(word, genLiteralList);
            List<Literal> body = new ArrayList<>();
            body.add(genAdjFact);
            Literal adjLiteral = new Literal(word);
            genLiteralList = new ArrayList<>(genLiteralList);
            genLiteralList.add(adjLiteral);
            Literal headLiteral = new Literal(DESCRIPTION_PROPERTY, genLiteralList);
            Rule adjRule = new Rule(adjFact, false);
            Rule generalRule = new Rule(headLiteral, body, false);
            rules.add(adjRule);
            rules.add(generalRule);
        }

        return rules;
    }

    private Word GetCompoundBaseWord(Word currentWord) {
        while (currentWord.getPOSTag().startsWith("NN") && currentWord.relationMap.containsKey("compound")){
            currentWord = currentWord.relationMap.get("compound").get(0);
        }

        return currentWord;
    }

    public String getLemma() {
        return lemma;
    }

    public String getWord() {
        return word;
    }
}
