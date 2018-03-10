import edu.mit.jwi.item.IIndexWord;
import edu.mit.jwi.item.POS;
import edu.stanford.nlp.trees.GrammaticalRelation;
import javafx.util.Pair;

import java.io.IOException;
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

    Word(String word, boolean isVariable){
        this.wordIndex = 0;
        this.word = word.toLowerCase();
        if(isVariable) this.word = word;
        this.POSTag = "NN";
        this.lemma = word.toLowerCase();
        if(isVariable) this.lemma = word;
        this.relationMap = new HashMap<>();
        this.NERTag = NamedEntityTagger.GetEntityTag("O");
        this.id = "";
    }

    Word(int wordIndex, String word, String lemma, String POSTag, String NERTag){
        this.wordIndex = wordIndex;
        this.word = word.toLowerCase();
        this.POSTag = POSTag;
        this.lemma = lemma.toLowerCase();
        this.NERTag = NamedEntityTagger.GetEntityTag(NERTag);
        this.relationMap = new HashMap<>();
        this.id = this.IsVerb() ? String.valueOf(this.eventId++) : "";
    }

    @Override
    public String toString() {
        return String.format("%s-%s", this.word, this.wordIndex);
    }

    public void AddDependency(Word dependentWord, GrammaticalRelation relation) {
        if(dependentWord == null){
            return;
        }

        String relationName = relation.getShortName();
        if(relationName.equalsIgnoreCase("amod") && !dependentWord.getPOSTag().equals("JJ")){
            dependentWord.POSTag = String.format("JJ-%s", dependentWord.POSTag);
        }

        String specific = relation.getSpecific();
        if(relationName.equals("nmod") && specific != null){
            relationName = String.format("%s:%s", relationName, specific);
        }

        if(!this.relationMap.containsKey(relationName)){
            this.relationMap.put(relationName, new ArrayList<>());
        }

        List<Word> dependencies = this.relationMap.get(relationName);
        dependencies.add(dependentWord);
        this.relationMap.put(relationName, dependencies);
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

    public List<Rule> GenerateRules() {
        if(this.IsVerb()){
            return GenerateRulesForVerb();
        }
        else if(this.IsNoun() || this.IsAdjective()){
            return GenerateRulesForNouns();
        }

        return new ArrayList<>();
    }

    public boolean IsAdjective() {
        return this.getPOSTag().startsWith("JJ");
    }

    private List<Rule> GenerateRulesForNouns() {
        List<Rule> rules = new ArrayList<>();
        rules.addAll(this.GenerateAdjectiveRules());
        rules.addAll(this.GenerateNERRules());
        rules.addAll(this.GenerateNominalModifierRules());
        rules.addAll(this.GenerateAdjectiveClauseRules());
        rules.addAll(this.GenerateCopulaRules());
        rules.addAll(this.GenerateAppositionalModifierRules());
        rules.addAll(this.GeneratePossessiveRules());
        return rules;
    }

    private List<Rule> GeneratePossessiveRules() {
        List<Rule> rules = new ArrayList<>();
        Word bePredicate = new Word("_possess", false);

        List<Word> modifiers = GetPossessiveModifiers();
        for (Word modifier : modifiers) {
            List<Literal> terms = new ArrayList<>();
            terms.add(new Literal(modifier));
            terms.add(new Literal(this));
            Literal head = new Literal(bePredicate, terms);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);

            List<Word> appositionalModifier = this.GetAppositionalModifiers();
            for(Word appos : appositionalModifier){
                terms = new ArrayList<>();
                terms.add(new Literal(modifier));
                terms.add(new Literal(appos));
                head = new Literal(bePredicate, terms);
                rule = new Rule(head, null, false);
                rules.add(rule);
            }
        }

        return rules;
    }

    private List<Word> GetPossessiveModifiers() {
        List<Word> modifiers = new ArrayList<>();
        if(this.relationMap.containsKey("nmod:poss")) modifiers.addAll(this.relationMap.get("nmod:poss"));
        return modifiers;
    }

    private List<Rule> GenerateAppositionalModifierRules() {
        List<Rule> rules = new ArrayList<>();
        Word bePredicate = new Word("_is", false);

        List<Word> modifiers = GetAppositionalModifiers();
        for (Word modifier : modifiers) {
            List<Literal> terms = new ArrayList<>();
            terms.add(new Literal(this));
            terms.add(new Literal(modifier));
            Literal head = new Literal(bePredicate, terms);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);

            terms = new ArrayList<>();

            if (WordNet.IsDictionaryWord(this)) {
                terms.add(new Literal(modifier));
                head = new Literal(this, terms);
                rule = new Rule(head, null, false);
                rules.add(rule);
            }
            else if (WordNet.IsDictionaryWord(modifier)) {
                terms.add(new Literal(this));
                head = new Literal(modifier, terms);
                rule = new Rule(head, null, false);
                rules.add(rule);
            }
        }

        return rules;
    }

    private List<Word> GetAppositionalModifiers() {
        List<Word> modifiers = new ArrayList<>();
        if(this.relationMap.containsKey("appos")) modifiers.addAll(this.relationMap.get("appos"));
        return modifiers;
    }

    private List<Rule> GenerateAdjectiveClauseRules() {
        List<Rule> rules = new ArrayList<>();
        List<Word> clauses = this.GetAdjectiveClause();
        Word relationWord = new Word("_relation", false);
        for (Word clause : clauses) {
            if(!clause.IsVerb()) continue;
            List<Literal> bodyList = new ArrayList<>();
            bodyList.add(new Literal(this));
            bodyList.add(new Literal(new Word(String.valueOf(clause.id), false)));
            bodyList.add(new Literal(new Word("_clause", false)));

            Literal head = new Literal(relationWord, bodyList);
            rules.add(new Rule(head, null, false));
        }

        return rules;
    }

    private List<Word> GetAdjectiveClause() {
        List<Word> adjectiveClaussRoot = new ArrayList<>();
        if(this.relationMap.containsKey("acl")) adjectiveClaussRoot.addAll(this.relationMap.get("acl"));
        return adjectiveClaussRoot;
    }

    private List<Rule> GenerateNominalModifierRules() {
        List<Rule> rules = new ArrayList<>();
        Word predicate = new Word("_property", false);
        List<Pair<Word, Word>> modifierPairs = this.GetNominalModifiers();

        for(Pair<Word, Word> modifier : modifierPairs) {
            List<Literal> bodyList = new ArrayList<>();
            Literal concept = new Literal(this);
            List<Word> numModifiers = modifier.getKey().GetNumericalModifiers();
            numModifiers.add(modifier.getKey());
            Word modifiedWord = CreateCompoundWord(numModifiers);
            Word preposition = modifier.getValue();
            bodyList.add(concept);

            if(preposition == null) {
                preposition = new Word("null", false);
            }

            bodyList.add(new Literal(preposition));
            bodyList.add(new Literal(modifiedWord));

            Literal head = new Literal(predicate, bodyList);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);
        }

        List<Word> modifiers = this.GetSpecialNominalModifiers("agent");
        for(Word modifier : modifiers) {
            Literal concept = new Literal(this);
            List<Literal> bodyList = new ArrayList<>();
            bodyList.add(concept);
            bodyList.add(new Literal(new Word("by", false)));
            bodyList.add(new Literal(modifier));
            Literal head = new Literal(predicate, bodyList);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);
        }

        rules.addAll(GenerateSuchAsRules());
        return rules;
    }

    private List<Rule> GenerateSuchAsRules() {
        List<Rule> rules = new ArrayList<>();
        List<Word> modifiers = this.GetSpecialNominalModifiers("such_as");
        for(Word modifier : modifiers) {
            List<Word> adjectives = this.GetAdjectives();
            List<Word> modifierAdjectives = modifier.GetAdjectives();
            List<Literal> bodyList = new ArrayList<>();
            bodyList.add(new Literal(this));
            bodyList.add(new Literal(modifier));
            Literal head = new Literal(new Word("_is", false), bodyList);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);

            adjectives.add(this);
            Word adjModifier = Word.CreateCompoundWord(adjectives);
            bodyList = new ArrayList<>();
            bodyList.add(new Literal(adjModifier));
            bodyList.add(new Literal(modifier));
            head = new Literal(new Word("_is", false), bodyList);
            rule = new Rule(head, null, false);
            rules.add(rule);

            modifierAdjectives.add(modifier);
            Word otherAdjModifier = Word.CreateCompoundWord(modifierAdjectives);
            bodyList = new ArrayList<>();
            bodyList.add(new Literal(this));
            bodyList.add(new Literal(otherAdjModifier));
            head = new Literal(new Word("_is", false), bodyList);
            rule = new Rule(head, null, false);
            rules.add(rule);

            bodyList = new ArrayList<>();
            bodyList.add(new Literal(adjModifier));
            bodyList.add(new Literal(otherAdjModifier));
            head = new Literal(new Word("_is", false), bodyList);
            rule = new Rule(head, null, false);
            rules.add(rule);

            if(WordNet.IsDictionaryWord(this)){
                List<Literal> terms = new ArrayList<>();
                terms.add(new Literal(modifier));
                head = new Literal(this, terms);
                rule = new Rule(head, null, false);
                rules.add(rule);

                terms = new ArrayList<>();
                terms.add(new Literal(otherAdjModifier));
                head = new Literal(this, terms);
                rule = new Rule(head, null, false);
                rules.add(rule);
            }
        }

        return rules;
    }

    private List<Word> GetSpecialNominalModifiers(String specialSpecific) {
        List<Word> specialModifiers = new ArrayList<>();
        String relationLong = String.format("nmod:%s", specialSpecific);
        if(this.relationMap.containsKey(relationLong)) specialModifiers.addAll(this.relationMap.get(relationLong));
        return specialModifiers;
    }

    private List<Rule> GenerateAdjectiveRules() {
        List<Rule> rules = new ArrayList<>();
        if(!this.IsNoun()) return rules;

        Word predicate = new Word("_mod", false);
        List<Word> adjectives = this.GetAdjectives();
        adjectives.addAll(this.GetNumericalModifiers());
        for(Word adjective : adjectives) {
            List<Literal> bodyList = new ArrayList<>();
            Literal concept = new Literal(new Word(this.lemma, false));
            Literal adj = new Literal(new Word(adjective.word, false));
            bodyList.add(concept);
            bodyList.add(adj);

            Literal head = new Literal(predicate, bodyList);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);
        }

        return rules;
    }

    private List<Word> GetAdjectives() {
        List<Word> adjectives = new ArrayList<>();
        if(this.relationMap.containsKey("amod")) adjectives.addAll(this.relationMap.get("amod"));
        return adjectives;
    }

    private List<Word> GetNumericalModifiers() {
        List<Word> numericalModifiers = new ArrayList<>();
        if(this.relationMap.containsKey("nummod")) numericalModifiers.addAll(this.relationMap.get("nummod"));
        return numericalModifiers;
    }

    private List<Pair<Word, Word>> GetNominalModifiers() {
        List<Pair<Word, Word>> nominalModifierPairs = new ArrayList<>();
        List<String> relations = new ArrayList<>(this.relationMap.keySet());
        relations.removeIf(x -> !x.startsWith("nmod"));

        for(String relation : relations){
            String prepString = relation.contains(":") ? relation.split(":")[1] : "";
            if(ShouldExcludeNominalModifierPreps(prepString)) continue;
            Word preposition = null;
            if(!prepString.equals("")) preposition = new Word(prepString, false);
            List<Word> modifiers = this.relationMap.get(relation);
            for(Word modifier : modifiers){
                nominalModifierPairs.add(new Pair<>(modifier, preposition));
            }
        }

        return nominalModifierPairs;
    }

    private boolean ShouldExcludeNominalModifierPreps(String prepString) {
        if(prepString.equals("poss")) return true;
        if(prepString.equals("agent")) return true;
        if(prepString.equals("such_as")) return true;
        return false;
    }

    private List<Rule> GenerateNERRules() {
        List<Rule> rules = new ArrayList<>();
        if(!this.IsNoun()) return rules;

        Word predicate = this.GenerateNERPredicate();
        if(predicate == null) return rules;

        List<Literal> bodyList = new ArrayList<>();
        Literal concept = new Literal(new Word(this.lemma, false));
        bodyList.add(concept);

        Literal head = new Literal(predicate, bodyList);
        Rule rule = new Rule(head, null, false);
        rules.add(rule);
        return rules;
    }

    private Word GenerateNERPredicate() {
        switch (this.NERTag){
            case DATE: return new Word("time", false);
            case ORGANIZATION: return new Word("company", false);
        }

        return null;
    }

    public boolean IsNoun() {
        return this.POSTag.startsWith("NN");
    }

    private List<Rule> GenerateRulesForVerb() {
        List<Rule> rules = new ArrayList<>();
        Word eventWord = new Word("event", false);
        List<Word> subjects = this.GetSubjects();
        List<Word> modifiers = this.GetModifiers();

        if(this.getLemma().equals("call") && this.hasAuxillaryVerbBe()){
            rules.addAll(GenerateIsRule(subjects, modifiers));
        }
        else {
            for (Word subject : subjects) {
                for (Word modifier : modifiers) {
                    List<Literal> bodyList = new ArrayList<>();
                    bodyList.add(new Literal(new Word(this.id, true)));
                    bodyList.add(new Literal(new Word(this.lemma, false)));
                    bodyList.add(new Literal(new Word(subject.lemma, false)));
                    bodyList.add(new Literal(new Word(modifier.lemma, false)));

                    Literal head = new Literal(eventWord, bodyList);
                    rules.add(new Rule(head, null, false));
                    rules.addAll(GenerateAppositionalEventRules(this, subject, modifier));
                }
            }

            if (subjects.size() == 0) {
                for (Word modifier : modifiers) {
                    List<Literal> bodyList = new ArrayList<>();
                    bodyList.add(new Literal(new Word(String.valueOf(this.id), false)));
                    bodyList.add(new Literal(new Word(this.lemma, false)));
                    bodyList.add(new Literal(new Word("null", false)));
                    bodyList.add(new Literal(new Word(modifier.lemma, false)));

                    Literal head = new Literal(eventWord, bodyList);
                    rules.add(new Rule(head, null, false));
                    rules.addAll(GenerateAppositionalEventRules(this, null, modifier));
                }
            }

            if (modifiers.size() == 0) {
                for (Word subject : subjects) {
                    List<Literal> bodyList = new ArrayList<>();
                    bodyList.add(new Literal(new Word(String.valueOf(this.id), false)));
                    bodyList.add(new Literal(new Word(this.lemma, false)));
                    bodyList.add(new Literal(new Word(subject.lemma, false)));
                    bodyList.add(new Literal(new Word("null", false)));

                    Literal head = new Literal(eventWord, bodyList);
                    rules.add(new Rule(head, null, false));
                    rules.addAll(GenerateAppositionalEventRules(this, subject, null));
                }
            }

            if(subjects.size() == 0 && modifiers.size() == 0 && !this.getLemma().equals("be")){
                List<Literal> bodyList = new ArrayList<>();
                bodyList.add(new Literal(new Word(String.valueOf(this.id), false)));
                bodyList.add(new Literal(new Word(this.lemma, false)));
                bodyList.add(new Literal(new Word("null", false)));
                bodyList.add(new Literal(new Word("null", false)));

                Literal head = new Literal(eventWord, bodyList);
                rules.add(new Rule(head, null, false));
            }

            rules.addAll(GenerateClausalComplementRules());
            rules.addAll(GenerateClausalRules());
            rules.addAll(GenerateAdverbRules());
            rules.addAll(GenerateNominalModifierRules());
            rules.addAll(GenerateConjunctionRules());
        }

        return rules;
    }

    private static List<Rule> GenerateAppositionalEventRules(Word actionWord, Word subject, Word object) {
        List<Rule> rules = new ArrayList<>();
        List<Word> subjectApposList = subject != null ? subject.GetAppositionalModifiers() : new ArrayList<>();
        List<Word> objectApposList = object != null ? object.GetAppositionalModifiers() : new ArrayList<>();
        Word eventWord = new Word("event", false);
        for(Word subjectAppos : subjectApposList){
            for(Word objectAppos : objectApposList){
                List<Literal> bodyList = new ArrayList<>();
                bodyList.add(new Literal(new Word(actionWord.id, false)));
                bodyList.add(new Literal(new Word(actionWord.lemma, false)));
                bodyList.add(new Literal(subjectAppos));
                bodyList.add(new Literal(objectAppos));
                Literal head = new Literal(eventWord, bodyList);
                Rule rule = new Rule(head, null, false);
                rules.add(rule);
            }
        }

        if(subjectApposList.size() != 0 && objectApposList.size() != 0) return rules;

        for(Word subjectAppos : subjectApposList){
            List<Literal> bodyList = new ArrayList<>();
            bodyList.add(new Literal(new Word(actionWord.id, false)));
            bodyList.add(new Literal(new Word(actionWord.lemma, false)));
            bodyList.add(new Literal(subjectAppos));
            bodyList.add(new Literal(new Word("null", false)));
            Literal head = new Literal(eventWord, bodyList);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);
        }

        if(subjectApposList.size() != 0) return rules;

        for(Word objectAppos : objectApposList){
            List<Literal> bodyList = new ArrayList<>();
            bodyList.add(new Literal(new Word(actionWord.id, false)));
            bodyList.add(new Literal(new Word(actionWord.lemma, false)));
            bodyList.add(new Literal(new Word("null", false)));
            bodyList.add(new Literal(object));
            Literal head = new Literal(eventWord, bodyList);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);
        }

        return rules;
    }

    private List<Rule> GenerateConjunctionRules() {
        List<Rule> rules = new ArrayList<>();
        List<Word> conjunctions = this.GetConjunctionRelations();
        Word relationWord = new Word("_relation", false);
        for (Word conjunction : conjunctions) {
            List<Literal> bodyList = new ArrayList<>();
            bodyList.add(new Literal(new Word(String.valueOf(this.id), false)));
            if(conjunction.IsVerb()) {
                bodyList.add(new Literal(new Word(String.valueOf(conjunction.id), false)));
            }
            else if(conjunction.IsNoun() || conjunction.IsAdjective()){
                bodyList.add(new Literal(conjunction));
            }
            else continue;

            bodyList.add(new Literal(new Word("_conj", false)));
            Literal head = new Literal(relationWord, bodyList);
            rules.add(new Rule(head, null, false));
        }
        return rules;
    }

    private List<Word> GetConjunctionRelations() {
        List<Word> conjunctions = new ArrayList<>();
        if(this.relationMap.containsKey("conj")) conjunctions.addAll(this.relationMap.get("conj"));
        return conjunctions;
    }

    private List<Rule> GenerateClausalRules() {
        List<Rule> rules = new ArrayList<>();
        List<Word> clauses = this.GetAdverbClause();
        Word relationWord = new Word("_relation", false);
        for (Word clause : clauses) {
            if(!clause.IsVerb()) continue;
            List<Literal> bodyList = new ArrayList<>();
            bodyList.add(new Literal(new Word(String.valueOf(this.id), false)));
            bodyList.add(new Literal(new Word(String.valueOf(clause.id), false)));
            bodyList.add(new Literal(new Word("_clause", false)));

            Literal head = new Literal(relationWord, bodyList);
            rules.add(new Rule(head, null, false));
        }

        return rules;
    }

    private List<Word> GetAdverbClause() {
        List<Word> clauses = new ArrayList<>();
        if(this.relationMap.containsKey("advcl")) clauses.addAll(this.relationMap.get("advcl"));
        return clauses;
    }

    private List<Rule> GenerateClausalComplementRules() {
        List<Rule> rules = new ArrayList<>();
        List<Word> clausalComplements = this.GetClausalComplements();
        Word relationWord = new Word("_relation", false);
        for (Word clause : clausalComplements) {
            if(!clause.IsVerb()) continue;
            List<Literal> bodyList = new ArrayList<>();
            bodyList.add(new Literal(new Word(String.valueOf(this.id), false)));
            bodyList.add(new Literal(new Word(String.valueOf(clause.id), false)));
            bodyList.add(new Literal(new Word("_clcomplement", false)));

            Literal head = new Literal(relationWord, bodyList);
            rules.add(new Rule(head, null, false));
        }

        return rules;
    }

    private List<Rule> GenerateAdverbRules() {
        List<Rule> rules = new ArrayList<>();
        List<Word> adverbs = GetAdverbs();
        for(Word adverb : adverbs){
            Word predicate = new Word("_mod", false);
            List<Literal> terms = new ArrayList<>();
            terms.add(new Literal(this));
            terms.add(new Literal(adverb));
            Literal head = new Literal(predicate, terms);
            Rule rule = new Rule(head, null, false);
            rules.add(rule);
        }

        return rules;
    }

    private List<Word> GetAdverbs() {
        List<Word> adverbs = new ArrayList<>();
        if(this.relationMap.containsKey("advmod")) adverbs.addAll(this.relationMap.get("advmod"));
        return adverbs;
    }

    private List<Rule> GenerateIsRule(List<Word> subjects, List<Word> modifiers) {
        List<Rule> rules = new ArrayList<>();
        Word isWord = new Word("_is", false);
        for (Word subject : subjects) {
            for (Word modifier : modifiers) {
                List<Literal> bodyList = new ArrayList<>();
                boolean isVariable = false;
                bodyList.add(new Literal(new Word(subject.lemma, isVariable)));
                isVariable = false;
                bodyList.add(new Literal(new Word(modifier.lemma, isVariable)));
                Literal head = new Literal(isWord, bodyList);
                rules.add(new Rule(head, null, false));
            }
        }
        return rules;
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
        modifiers.addAll(GetDirectObjects());

        modifiers = FilterCardinalNumbers(modifiers);
        return modifiers;
    }

    private List<Word> GetPassiveSubjects() {
        List<Word> passiveSubjects = new ArrayList<>();
        if(this.relationMap.containsKey("nsubjpass")) passiveSubjects.addAll(this.relationMap.get("nsubjpass"));
        return passiveSubjects;
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
                List<Pair<Word, Word>> nmods = directObject.GetNominalModifiers();
                if(nmods.size() == 0) continue;
                for(Pair<Word, Word> nmod : nmods){
                    Word preposition = nmod.getValue();
                    if(preposition == null) continue;
                    List<Word> wordCollection = new ArrayList<>();
                    wordCollection.add(directObject);
                    wordCollection.add(preposition);
                    wordCollection.add(nmod.getKey());
                    Word compound = CreateCompoundWord(wordCollection);
                    supplimentaryDirectObjects.add(compound);
                }
            }

            directObjects.addAll(supplimentaryDirectObjects);
        }

        return directObjects;
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
        List<Word> indirectObjects = new ArrayList<>();
        if(this.relationMap.containsKey("iobj")) indirectObjects.addAll(this.relationMap.get("iobj"));
        return indirectObjects;
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

    public List<Rule> GenerateCopulaRules() {
        if(!this.IsNoun() && !this.IsAdjective()) return new ArrayList<>();
        List<Rule> rules = new ArrayList<>();
        Word bePredicate = new Word("_is", false);

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

            if(WordNet.IsDictionaryWord(this)){
                terms = new ArrayList<>();
                terms.add(new Literal(subject));
                head = new Literal(this, terms);
                rule = new Rule(head, null, false);
                rules.add(rule);
            }

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

        for(Word subject : subjects) {
            List<Word> conjunctions = GetConjunctionRelations();
            for(Word conjunction : conjunctions) {
                if(!conjunction.IsNoun() && !conjunction.IsAdjective()) continue;
                adjectives = conjunction.GetAdjectives();
                List<Literal> terms = new ArrayList<>();
                terms.add(new Literal(subject));
                terms.add(new Literal(conjunction));
                Literal head = new Literal(bePredicate, terms);
                Rule rule = new Rule(head, null, false);
                rules.add(rule);

                if(WordNet.IsDictionaryWord(conjunction)){
                    terms = new ArrayList<>();
                    terms.add(new Literal(subject));
                    head = new Literal(conjunction, terms);
                    rule = new Rule(head, null, false);
                    rules.add(rule);
                }

                if (adjectives.size() != 0) {
                    terms = new ArrayList<>();
                    terms.add(new Literal(subject));
                    List<Word> wordCollection = new ArrayList<>();
                    wordCollection.addAll(adjectives);
                    wordCollection.add(conjunction);
                    Word compoundWord = CreateCompoundWord(wordCollection);
                    terms.add(new Literal(compoundWord));
                    head = new Literal(bePredicate, terms);
                    rule = new Rule(head, null, false);
                    rules.add(rule);
                }
            }
        }

        return rules;
    }

    private Word GetToBeCopula() {
        if(this.relationMap.containsKey("cop")) {
            List<Word> copulas = new ArrayList<>();
            copulas .addAll(this.relationMap.get("cop"));
            for(Word copula : copulas){
                if(copula.lemma.equals("be")) return copula;
            }
        };

        return null;
    }

    public static Word CreateCompoundWord(List<Word> wordCollection) {
        StringBuilder builder = new StringBuilder();
        for(Word word : wordCollection){
            String wordString = word.IsAdjective() ? word.getWord() : word.getLemma();
            builder.append(wordString);
            builder.append(" ");
        }

        String compoundWord = builder.toString().trim();
        compoundWord = compoundWord.replaceAll(" ", "_");
        return new Word(compoundWord, false);
    }

    public void SetNERTag(NamedEntityTagger.NamedEntityTags tag) {
        this.NERTag = tag;
    }

    public List<Rule> GenerateAlternateCopulaRules(List<Word> wordList) {
        List<Rule> rules = new ArrayList<>();
        Word copula = GetToBeCopula();
        if(copula == null) return rules;
        List<Word> subjects = this.GetSubjects();
        if(subjects.size() != 0) return rules;
        Word bePredicate = new Word("_is", false);
        for(Word word : wordList){
            List<Word> conjunctions = word.GetConjunctionRelations();
            for(Word conjunction : conjunctions){
                if(conjunction != this) continue;
                subjects = word.GetSubjects();

                List<Word> adjectives = this.GetAdjectives();
                for(Word subject : subjects) {
                    List<Literal> terms = new ArrayList<>();
                    terms.add(new Literal(subject));
                    terms.add(new Literal(this));
                    Literal head = new Literal(bePredicate, terms);
                    Rule rule = new Rule(head, null, false);
                    rules.add(rule);

                    if (adjectives.size() != 0) {
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
            }
        }
        return rules;
    }

    public boolean IsNumber() {
        if(this.getPOSTag().equals("CD")) return true;
        return false;
    }

    public boolean IsDay() {
        if(this.IsNumber() && this.getNERTag() == NamedEntityTagger.NamedEntityTags.DATE) {
            try{
                int day = Integer.parseInt(this.getWord());
                if(day > 0 && day < 32) return true;
            }
            catch (Exception ex) {
                return false;
            }
        }

        return false;
    }

    public boolean IsYear() {
        if(this.IsNumber() && this.getNERTag() == NamedEntityTagger.NamedEntityTags.DATE) {
            if(this.getWord().length() == 4)
            return true;
        }

        return false;
    }

    public boolean IsMonth() {
        String month = this.getWord().toLowerCase();
        switch (month){
            case "jan": case "january":
            case "feb": case "february":
            case "mar": case "march":
            case "apr": case "april":
            case "may":
            case "jun": case "june":
            case "jul": case "july":
            case "aug": case "august":
            case "sep": case "sept": case "september":
            case "oct": case "october":
            case "nov": case "november":
            case "dec": case "december":
                return true;
        }

        return false;
    }
}
