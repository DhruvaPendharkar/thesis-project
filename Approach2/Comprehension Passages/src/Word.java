import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;

/**
 * Created by dhruv on 9/24/2017.
 */
public class Word {

    private String word;
    private int wordIndex;
    private String POSTag;
    private String lemma;
    private String id;
    private NamedEntityTagger.NamedEntityTags NERTag;
    private HashMap<String, List<Word>> relationMap;

    public static int eventId = 1;

    Word(String word){
        this.wordIndex = 0;
        this.word = word.toLowerCase();
        this.POSTag = "NN";
        this.lemma = word.toLowerCase();
        this.relationMap = new HashMap<>();
        this.NERTag = NamedEntityTagger.GetEntityTag("O");
        this.id = "";
    }

    Word(int wordIndex, String word, String lemma, String POSTag, String NERTag, boolean isQuestion){
        this.wordIndex = wordIndex;
        this.word = word;
        this.POSTag = POSTag;
        this.lemma = lemma.toLowerCase();
        this.NERTag = NamedEntityTagger.GetEntityTag(NERTag);
        this.relationMap = new HashMap<>();
        this.id = this.IsVerb() ? String.valueOf(this.eventId++) : "";
        if(isQuestion) this.id = "I" + this.id;
    }

    @Override
    public String toString() {
        return String.format("%s-%s", this.word, this.wordIndex);
    }

    public void AddDependency(Word dependentWord, String relationLong) {
        if(dependentWord == null){
            return;
        }

        if(!this.relationMap.containsKey(relationLong)){
            this.relationMap.put(relationLong, new ArrayList<>());
        }

        List<Word> dependencies = this.relationMap.get(relationLong);
        dependencies.add(dependentWord);
        this.relationMap.put(relationLong, dependencies);
    }

    public String getPOSTag(){
        return this.POSTag;
    }

    public NamedEntityTagger.NamedEntityTags getNERTag(){
        return this.NERTag;
    }

    public String getLemma() {
        return lemma;
    }

    public String getWord() {
        return word;
    }

    public List<Rule> GenerateRules(boolean isQuestion) {
        if(this.IsVerb()){
            return GenerateRulesForVerb(isQuestion);
        }
        else if(this.IsNoun()){
            return GenerateRulesForNouns();
        }

        return new ArrayList<>();
    }

    private List<Rule> GenerateRulesForNouns() {
        List<Rule> rules = new ArrayList<>();
        rules.addAll(this.GenerateAdjectiveRules());
        rules.addAll(this.GenerateNERRules());
        return rules;
    }

    private List<Rule> GenerateAdjectiveRules() {
        List<Rule> rules = new ArrayList<>();
        if(!this.IsNoun()) return rules;

        Word predicate = new Word("_adj");
        List<Word> adjectives = this.GetAdjectives();

        for(Word adjective : adjectives) {
            List<Literal> bodyList = new ArrayList<>();
            Literal concept = new Literal(new Word(this.lemma));
            Literal adj = new Literal(new Word(adjective.lemma));
            bodyList.add(concept);
            bodyList.add(adj);

            Literal head = new Literal(predicate, bodyList);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);
        }

        return rules;
    }

    private List<Word> GetAdjectives() {
        if(this.relationMap.containsKey("amod")) return this.relationMap.get("amod");
        return new ArrayList<>();
    }

    private List<Word> GetNominalModifiers() {
        if(this.relationMap.containsKey("nmod")) return this.relationMap.get("nmod");
        return new ArrayList<>();
    }

    private List<Rule> GenerateNERRules() {
        List<Rule> rules = new ArrayList<>();
        if(!this.IsNoun()) return rules;

        Word predicate = this.GenerateNERPredicate();
        if(predicate == null) return rules;

        List<Literal> bodyList = new ArrayList<>();
        Literal concept = new Literal(new Word(this.lemma));
        bodyList.add(concept);

        Literal head = new Literal(predicate, bodyList);
        Rule rule = new Rule(head, null, false);
        rules.add(rule);
        return rules;
    }

    private Word GenerateNERPredicate() {
        switch (this.NERTag){
            case DATE: return new Word("time");
            case ORGANIZATION: return new Word("company");
        }

        return null;
    }

    public boolean IsNoun() {
        return this.POSTag.startsWith("NN");
    }

    private List<Rule> GenerateRulesForVerb(boolean isQuestion) {
        List<Rule> rules = new ArrayList<>();
        Word eventWord = new Word("event");
        List<Word> subjects = this.GetSubjects();
        List<Word> modifiers = this.GetModifiers();

        if(this.getLemma().equals("call") && this.hasAuxillaryVerbBe()){
            rules.addAll(GenerateIsRule(subjects, modifiers));
        }
        else {
            for (Word subject : subjects) {
                for (Word modifier : modifiers) {
                    List<Literal> bodyList = new ArrayList<>();
                    bodyList.add(new Literal(new Word(this.id)));
                    if(isQuestion && this.lemma.equals("do")){
                        bodyList.add(new Literal(new Word("D" + this.id)));
                    }
                    else {
                        bodyList.add(new Literal(new Word(this.lemma)));
                    }

                    if(subject.IsW_Word()){
                        subject.lemma = "X";
                    }
                    bodyList.add(new Literal(new Word(subject.lemma)));
                    if(modifier.IsW_Word()){
                        modifier.lemma = "X";
                    }
                    bodyList.add(new Literal(new Word(modifier.lemma)));

                    Literal head = new Literal(eventWord, bodyList);
                    rules.add(new Rule(head, null, false));
                }
            }

            if (subjects.size() == 0) {
                for (Word modifier : modifiers) {
                    List<Literal> bodyList = new ArrayList<>();
                    bodyList.add(new Literal(new Word(String.valueOf(this.id))));
                    if(isQuestion && this.lemma.equals("do")){
                        bodyList.add(new Literal(new Word("D" + this.id)));
                    }
                    else {
                        bodyList.add(new Literal(new Word(this.lemma)));
                    }

                    bodyList.add(new Literal(new Word("null")));
                    if(modifier.IsW_Word()){
                        modifier.lemma = "X";
                    }
                    bodyList.add(new Literal(new Word(modifier.lemma)));

                    Literal head = new Literal(eventWord, bodyList);
                    rules.add(new Rule(head, null, false));
                }
            }

            if (modifiers.size() == 0) {
                for (Word subject : subjects) {
                    List<Literal> bodyList = new ArrayList<>();
                    bodyList.add(new Literal(new Word(String.valueOf(this.id))));
                    if(isQuestion && this.lemma.equals("do")){
                        bodyList.add(new Literal(new Word("D" + this.id)));
                    }
                    else {
                        bodyList.add(new Literal(new Word(this.lemma)));
                    }

                    if(subject.IsW_Word()){
                        subject.lemma = "X";
                    }
                    bodyList.add(new Literal(new Word(subject.lemma)));
                    bodyList.add(new Literal(new Word("null")));

                    Literal head = new Literal(eventWord, bodyList);
                    rules.add(new Rule(head, null, false));
                }
            }

            List<Word> clausalComplements = this.GetClausalComplements();
            Word relationWord = new Word("_relation");
            for (Word clause : clausalComplements) {
                if(!clause.IsVerb()) continue;
                List<Literal> bodyList = new ArrayList<>();
                bodyList.add(new Literal(new Word(String.valueOf(this.id))));
                bodyList.add(new Literal(new Word(String.valueOf(clause.id))));
                bodyList.add(new Literal(new Word("_clcomplement")));

                Literal head = new Literal(relationWord, bodyList);
                rules.add(new Rule(head, null, false));
            }
        }

        return rules;
    }

    private List<Rule> GenerateIsRule(List<Word> subjects, List<Word> modifiers) {
        List<Rule> rules = new ArrayList<>();
        Word isWord = new Word("_is");
        for (Word subject : subjects) {
            for (Word modifier : modifiers) {
                List<Literal> bodyList = new ArrayList<>();
                if(subject.IsW_Word()){
                    subject.lemma = "X";
                }
                bodyList.add(new Literal(new Word(subject.lemma)));
                if(modifier.IsW_Word()){
                    modifier.lemma = "X";
                }
                bodyList.add(new Literal(new Word(modifier.lemma)));

                Literal head = new Literal(isWord, bodyList);
                rules.add(new Rule(head, null, false));
            }
        }
        return rules;
    }

    private boolean IsW_Word() {
        return this.getPOSTag().startsWith("W");
    }

    private List<Word> GetClausalComplements() {
        List<Word> clauses = new ArrayList<>();
        if(this.relationMap.containsKey("xcomp")) clauses.addAll(this.relationMap.get("xcomp"));
        if(this.relationMap.containsKey("ccomp")) clauses.addAll(this.relationMap.get("ccomp"));
        return clauses;
    }

    private List<Word> GetModifiers() {
        List<Word> modifiers = new ArrayList<>();
        modifiers.addAll(GetPassiveSubjects());
        modifiers.addAll(GetNominalModifiers());
        modifiers.addAll(GetDirectObjects());

        modifiers = FilterCardinalNumbers(modifiers);
        return modifiers;
    }

    private List<Word> GetPassiveSubjects() {
        if(this.relationMap.containsKey("nsubjpass")) return this.relationMap.get("nsubjpass");
        return new ArrayList<>();
    }

    private List<Word> FilterCardinalNumbers(List<Word> modifiers) {
        List<Word> filtered = new ArrayList<>();
        for(Word modifier : modifiers){
            if(modifier.getPOSTag().equals("CD")) continue;
            filtered.add(modifier);
        }
        return filtered;
    }

    private List<Word> GetDirectObjects() {
        List<Word> directObjects = new ArrayList<>();
        if(this.relationMap.containsKey("dobj")) {
            directObjects.addAll(this.relationMap.get("dobj"));
            List<Word> supplimentaryDirectObjects = new ArrayList<>();
            List<Word> adjectiveDirectObjects = GetSupplimentaryFromAdjectives(directObjects);
            directObjects.addAll(adjectiveDirectObjects);
            for(Word directObject : directObjects){
                List<Word> nmods = directObject.GetNominalModifiers();
                if(nmods.size() == 0) continue;
                for(Word nmod : nmods){
                    Word preposition = nmod.GetPreposition();
                    if(preposition == null) continue;
                    List<Word> wordCollection = new ArrayList<>();
                    wordCollection.add(directObject);
                    wordCollection.add(preposition);
                    wordCollection.add(nmod);
                    Word compound = CreateCompoundWord(wordCollection);
                    supplimentaryDirectObjects.add(compound);
                }
            }

            directObjects.addAll(supplimentaryDirectObjects);
        }

        return directObjects;
    }

    private Word GetPreposition() {
        if(this.relationMap.containsKey("case")) return this.relationMap.get("case").get(0);
        return null;
    }

    private List<Word> GetSubjects() {
        List<Word> subjects = new ArrayList<>();
        if(this.relationMap.containsKey("nsubj")) subjects.addAll(this.relationMap.get("nsubj"));
        if(this.relationMap.containsKey("nsubj:xsubj")) subjects.addAll(this.relationMap.get("nsubj:xsubj"));
        subjects.addAll(GetIndirectObjects());

        List<Word> adjectiveSubjects = GetSupplimentaryFromAdjectives(subjects);
        subjects.addAll(adjectiveSubjects);
        return subjects;
    }

    private List<Word> GetIndirectObjects() {
        if(this.relationMap.containsKey("iobj")) return this.relationMap.get("iobj");
        return new ArrayList<>();
    }

    private List<Word> GetSupplimentaryFromAdjectives(List<Word> subjects) {
        List<Word> compounds = new ArrayList<>();
        for(Word subject : subjects){
            List<Word> adjectives = subject.GetAdjectives();
            if(adjectives.size() == 0) continue;
            List<Word> wordCollection = new ArrayList<>();
            wordCollection.addAll(adjectives);
            wordCollection.add(subject);
            Word compound = CreateCompoundWord(wordCollection);
            compounds.add(compound);
        }

        return compounds;
    }

    public boolean IsVerb() {
        return this.POSTag.startsWith("VB");
    }

    public boolean hasAuxillaryVerbBe() {
        if(this.relationMap.containsKey("auxpass")){
            List<Word> auxWords = this.relationMap.get("auxpass");
            for(Word aux : auxWords){
                if(aux.getLemma().equals("be")){
                    return true;
                }
            }
        }
        return false;
    }

    public List<Rule> GenerateNonVerbRootRules() {
        if(!this.IsNoun()) return new ArrayList<>();
        List<Rule> rules = new ArrayList<>();
        Word bePredicate = new Word("_is");

        Word copula = GetToBeCopula();
        if(copula == null) return new ArrayList<>();
        List<Word> subjects = this.GetSubjects();
        List<Word> adjectives = this.GetAdjectives();
        for(Word subject : subjects) {
            List<Literal> terms = new ArrayList<>();
            terms.add(new Literal(subject));
            terms.add(new Literal(this));
            Literal head = new Literal(bePredicate, terms);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);

            if(adjectives.size() != 0){
                terms = new ArrayList<>();
                terms.add(new Literal(subject));
                List<Word> wordCollection = new ArrayList<>();
                wordCollection.addAll(adjectives);
                wordCollection.add(this);
                Word compundWord = CreateCompoundWord(wordCollection);
                terms.add(new Literal(compundWord));
                head = new Literal(bePredicate, terms);
                rule = new Rule(head, null, false);
                rules.add(rule);
            }
        }

        return rules;
    }

    private Word GetToBeCopula() {
        if(this.relationMap.containsKey("cop")) {
            List<Word> copulas = this.relationMap.get("cop");
            for(Word copula : copulas){
                if(copula.lemma.equals("be")) return copula;
            }
        };

        return null;
    }

    public static Word CreateCompoundWord(List<Word> wordCollection) {
        StringBuilder builder = new StringBuilder();
        for(Word word : wordCollection){
            builder.append(word.getWord());
            builder.append(" ");
        }

        String compoundWord = builder.toString().trim();
        compoundWord = compoundWord.replaceAll(" ", "_");
        return new Word(compoundWord);
    }

    public void SetNERTag(NamedEntityTagger.NamedEntityTags tag) {
        this.NERTag = NamedEntityTagger.NamedEntityTags.ORGANIZATION;
    }
}
