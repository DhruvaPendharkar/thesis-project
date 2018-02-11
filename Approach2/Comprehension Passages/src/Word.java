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
        this.word = word;
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

    private boolean IsNoun() {
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
        if(this.relationMap.containsKey("nmod")) modifiers.addAll(this.relationMap.get("nmod"));
        if(this.relationMap.containsKey("dobj")) modifiers.addAll(this.relationMap.get("dobj"));
        return modifiers;
    }

    private List<Word> GetSubjects() {
        if(this.relationMap.containsKey("nsubj")) return this.relationMap.get("nsubj");
        if(this.relationMap.containsKey("nsubjpass")) return this.relationMap.get("nsubjpass");
        if(this.relationMap.containsKey("nsubj:xsubj")) return this.relationMap.get("nsubj:xsubj");
        return new ArrayList<>();
    }

    private boolean IsVerb() {
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
}
