import edu.mit.jwi.Dictionary;
import edu.mit.jwi.IDictionary;
import edu.mit.jwi.item.*;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.*;
import java.util.List;

public class WordNet {

    public static final String RULES_FILE = "__rules";
    public static final String CONCEPT_SENSE_FORMAT = "%s@%s";
    private static IDictionary dictionary;
    private static HashMap<String, Concept> conceptMap = new HashMap<>();
    private static HashMap<String, List<Concept>> baseConceptMap = new HashMap<>();

    /*public static void main(String args[]) throws IOException {
        Set<String> nouns = new TreeSet<>();
        nouns.add("circulatory system");
        WordNet.BuildOntology(nouns);
    }*/

    public static void BuildOntology(Set<String> nouns) throws IOException {
        WordNet.dictionary = TestDictionary();
        for(String noun : nouns) {
            GenerateHypernymOntology(noun);
        }

        /*List<String> concepts = new ArrayList<>(conceptMap.keySet());
        for(String concept : concepts) {
            GenerateMeronymOntology(concept);
        }*/

        System.out.print(String.format("Ontology Built Successfully : %d words", conceptMap.size()));
    }

    private static IDictionary TestDictionary() throws IOException {
        String wnhome = System.getenv("WNHOME");
        String path = wnhome + File.separator + "dict";
        URL url = new URL("file", null, path);
        IDictionary dictionary = new Dictionary(url);
        dictionary.open();
        return dictionary;
    }

    private static void GenerateHypernymOntology(String word){
        IIndexWord idxWord = dictionary.getIndexWord(word, POS.NOUN);
        HashMap<String, List<IWordID>> senseMap = GetSenses(dictionary, idxWord);
        for(String sense : senseMap.keySet()){
            Concept concept = new Concept(word, sense);
            String wordSense = String.format(CONCEPT_SENSE_FORMAT, word, sense);

            if(conceptMap.containsKey(wordSense)) {
                concept = conceptMap.get(wordSense);
            }

            List<IWordID> wordIDList = senseMap.get(sense);
            for(IWordID id : wordIDList) {
                GetHypernyms(id, sense, concept);
            }

            conceptMap.put(wordSense, concept);
        }
    }

    /*private static void GenerateMeronymOntology(String word){
        IIndexWord idxWord = dictionary.getIndexWord(word, POS.NOUN);
        HashMap<String, List<IWordID>> senseMap = GetSenses(dictionary, idxWord);
        Concept concept = new Concept(word);
        if(conceptMap.containsKey(word)) {
            concept = conceptMap.get(word);
        }

        for(String sense : senseMap.keySet()) {
            List<IWordID> wordIDList = senseMap.get(sense);
            for(IWordID id : wordIDList) {
                GetMeronyms(id, sense, concept, MeronymTypes.MERONYM_PART, false);
                GetMeronyms(id, sense, concept, MeronymTypes.MERONYM_MEMBER, false);
                GetMeronyms(id, sense, concept, MeronymTypes.MERONYM_SUBSTANCE, false);
            }
        }

        conceptMap.put(word, concept);
    }*/

    private static void GetHypernyms(IWordID wordID, String sense, Concept parentConcept){
        IWord iWord = dictionary.getWord(wordID);
        ISynset synset = iWord.getSynset();
        List<ISynsetID> hypernyms = synset.getRelatedSynsets(Pointer.HYPERNYM);
        HashMap<String, IWordID> hypernymMap = GetHypernymsMap(dictionary, hypernyms, sense);
        if(hypernymMap.isEmpty()) {
            return;
        }

        IWordID hypernym;
        if(hypernymMap.containsKey(sense)){
            hypernym = hypernymMap.get(sense);
        }
        else if(hypernymMap.containsKey("noun.Tops")){
            sense = "noun.Tops";
            hypernym = hypernymMap.get(sense);
        }
        else {
            sense = hypernymMap.keySet().iterator().next();
            hypernym = hypernymMap.get(sense);
        }

        String hypernymSense = String.format(CONCEPT_SENSE_FORMAT, hypernym.getLemma(), sense);
        if(conceptMap.containsKey(hypernymSense)){
            Concept concept = conceptMap.get(hypernymSense);
            parentConcept.SetHypernym(sense, concept);
            return;
        }

        Concept concept = new Concept(hypernym.getLemma(), sense);
        parentConcept.SetHypernym(sense, concept);
        hypernymSense = String.format(CONCEPT_SENSE_FORMAT, hypernym.getLemma(), sense);
        conceptMap.put(hypernymSense, concept);

        GetHypernyms(hypernym, sense, concept);
    }

    /*private static void GetMeronyms(IWordID wordID, String sense, Concept parentConcept, MeronymTypes meronymType, boolean useAllSenses){
        IWord iWord = dictionary.getWord(wordID);
        ISynset synset = iWord.getSynset();
        Pointer meronymPointer = GetMeronymPointer(meronymType);
        List<ISynsetID> meronyms = synset.getRelatedSynsets(meronymPointer);
        HashMap<String, List<IWordID>> meronymMap = GetMeronymsMap(dictionary, meronyms, sense);
        if(meronymMap.isEmpty()) {
            return;
        }

        List<List<IWordID>> meronymLists = new ArrayList<>();
        if(!useAllSenses) {
            List<IWordID> meronymList;
            if (meronymMap.containsKey(sense)) {
                meronymList = meronymMap.get(sense);
            } else if (meronymMap.containsKey("noun.Tops")) {
                sense = "noun.Tops";
                meronymList = meronymMap.get(sense);
            } else {
                sense = meronymMap.keySet().iterator().next();
                meronymList = meronymMap.get(sense);
            }

            meronymLists.add(meronymList);
        }
        else {
            meronymLists.addAll(meronymMap.values());
        }

        for(List<IWordID> meronymList : meronymLists) {
            for (IWordID meronym : meronymList) {
                if (conceptMap.containsKey(meronym.getLemma())) {
                    Concept concept = conceptMap.get(meronym.getLemma());
                    parentConcept.SetMeronym(sense, concept, meronymType);
                    continue;
                }

                Concept concept = new Concept(meronym.getLemma());
                parentConcept.SetMeronym(sense, concept, meronymType);
                conceptMap.put(meronym.getLemma(), concept);

                GetMeronyms(meronym, sense, concept, MeronymTypes.MERONYM_PART, useAllSenses);
                GetMeronyms(meronym, sense, concept, MeronymTypes.MERONYM_SUBSTANCE, useAllSenses);
                GetMeronyms(meronym, sense, concept, MeronymTypes.MERONYM_MEMBER, useAllSenses);
            }
        }
    }*/

    private static Pointer GetMeronymPointer(MeronymTypes meronymType) {
        switch (meronymType){
            case MERONYM_SUBSTANCE: return Pointer.MERONYM_SUBSTANCE;
            case MERONYM_PART: return Pointer.MERONYM_PART;
            case MERONYM_MEMBER: return Pointer.MERONYM_MEMBER;
        }

        return Pointer.MERONYM_PART;
    }

    private static HashMap<String, IWordID> GetHypernymsMap(IDictionary dictionary, List<ISynsetID> hypernyms, String baseSense) {
        HashMap<String, IWordID> hypernymMap = new HashMap<>();
        for(ISynsetID sid : hypernyms) {
            List<IWord> words = dictionary.getSynset(sid).getWords();
            Iterator<IWord> iterator = words.iterator();
            IWord synset = iterator.next();
            String sense = synset.getSenseKey().getLexicalFile().toString();

            if(sense.equals(baseSense) || sense.equals("noun.Tops")) {
                if(!hypernymMap.containsKey(sense)) {
                    hypernymMap.put(sense, synset.getID());
                }
            }
        }

        if(hypernymMap.isEmpty() && hypernyms.size() == 1){
            ISynsetID hypernym = hypernyms.get(0);
            List<IWord> words = dictionary.getSynset(hypernym).getWords();
            Iterator<IWord> iterator = words.iterator();
            IWord synset = iterator.next();
            String sense = synset.getSenseKey().getLexicalFile().toString();
            hypernymMap.put(sense, synset.getID());
        }

        return hypernymMap;
    }

    private static HashMap<String, List<IWordID>> GetMeronymsMap(IDictionary dictionary, List<ISynsetID> meronyms, String baseSense) {
        HashMap<String, List<IWordID>> meronymMap = new HashMap<>();
        for(ISynsetID sid : meronyms) {
            List<IWord> words = dictionary.getSynset(sid).getWords();
            for(IWord synset : words) {
                String sense = synset.getSenseKey().getLexicalFile().toString();
                if (sense.equals(baseSense) || sense.equals("noun.Tops")) {
                    List<IWordID> synsetIdList = new ArrayList<>();
                    if (meronymMap.containsKey(sense)) {
                        synsetIdList = meronymMap.get(sense);
                    }

                    synsetIdList.add(synset.getID());
                    meronymMap.put(sense, synsetIdList);
                }
            }
        }

        if(meronymMap.isEmpty() && meronyms.size() == 1){
            ISynsetID meronym = meronyms.get(0);
            List<IWord> words = dictionary.getSynset(meronym).getWords();
            Iterator<IWord> iterator = words.iterator();
            IWord synset = iterator.next();
            String sense = synset.getSenseKey().getLexicalFile().toString();
            List<IWordID> synsetIdList = new ArrayList<>();
            synsetIdList.add(synset.getID());
            meronymMap.put(sense, synsetIdList);
        }

        return meronymMap;
    }

    private static HashMap<String, List<IWordID>> GetSenses(IDictionary dictionary, IIndexWord idxWord) {
        List<IWordID> wordIDs = idxWord.getWordIDs();
        HashMap<String, List<IWordID>> senseMap = new HashMap<>();
        for(IWordID wordID : wordIDs){
            IWord word = dictionary.getWord(wordID);
            String sense = word.getSenseKey().getLexicalFile().getName();
            List<IWordID> wordIDList = new ArrayList<>();
            if(senseMap.containsKey(sense)) {
                wordIDList = senseMap.get(sense);
            }

            wordIDList.add(wordID);
            senseMap.put(sense, wordIDList);
        }

        return senseMap;
    }

    public static String GenerateConceptToASPCode(List<Concept> concepts) {
        List<Rule> rules = new ArrayList<>();
        rules.addAll(ConvertToClassFacts(concepts));
        rules.addAll(ConvertToSuperClassFacts(concepts));
        //rules.addAll(ConvertToMeronymPartFact(concept));
        //rules.addAll(ConvertToMeronymMemberFact(concept));
        //rules.addAll(ConvertToMeronymSubstance(concept));
        return GenerateASPCode(rules);
    }

    private static HashSet<Rule> CreateInheritanceRules() {
        HashSet<Rule> rules = new HashSet<>();
        Word superclassWord = new Word(0, "superclass", "superclass", "NN");
        Word isSuperclassWord = new Word(0, "is_superclass", "is_superclass", "NN");
        Word xWord = new Word(0, "X", "X", "NN");
        Word kWord = new Word(0, "K", "K", "NN");
        Word yWord = new Word(0, "Y", "Y", "NN");

        List<Literal> terms = new ArrayList<>();
        terms.add(new Literal(xWord));
        terms.add(new Literal(yWord));
        Literal head = new Literal(superclassWord, terms);

        List<Literal> body = new ArrayList<>();
        Literal isSuperclass = new Literal(isSuperclassWord, terms);
        body.add(isSuperclass);

        rules.add(new Rule(head, body, false));
        body = new ArrayList<>();

        terms = new ArrayList<>();
        terms.add(new Literal(kWord));
        terms.add(new Literal(yWord));
        isSuperclass = new Literal(isSuperclassWord, terms);

        terms = new ArrayList<>();
        terms.add(new Literal(xWord));
        terms.add(new Literal(kWord));
        Literal superclass = new Literal(superclassWord, terms);

        body.add(isSuperclass);
        body.add(superclass);
        rules.add(new Rule(head, body, false));
        return rules;
    }

    /*private static HashSet<Rule> CreateMeronymPartRules(boolean shouldConsiderSuperRelation) {
        HashSet<Rule> rules = new HashSet<>();
        Word _hasPartWord = new Word(0, "_hasPart", "_hasPart", "NN");
        Word hasPartWord = new Word(0, "hasPart", "hasPart", "NN");
        Word xWord = new Word(0, "X", "X", "NN");
        Word yWord = new Word(0, "Y", "Y", "NN");
        Word zWord = new Word(0, "Z", "Z", "NN");

        List<Literal> terms = new ArrayList<>();
        terms.add(new Literal(xWord));
        terms.add(new Literal(yWord));
        Literal head = new Literal(_hasPartWord, terms);

        List<Literal> body = new ArrayList<>();
        Literal hasPart = new Literal(hasPartWord, terms);
        body.add(hasPart);

        rules.add(new Rule(head, body, false));
        body = new ArrayList<>();

        terms = new ArrayList<>();
        terms.add(new Literal(xWord));
        terms.add(new Literal(zWord));
        hasPart = new Literal(hasPartWord, terms);

        terms = new ArrayList<>();
        terms.add(new Literal(zWord));
        terms.add(new Literal(yWord));
        Literal _hasPart = new Literal(_hasPartWord, terms);

        body.add(hasPart);
        body.add(_hasPart);
        rules.add(new Rule(head, body, false));

        if(shouldConsiderSuperRelation){
            Word _hasSuperPartWord = new Word(0, "_hasSuperPart", "_hasSuperPart", "NN");
            Word superclassWord = new Word(0, "superclass", "superclass", "NN");
            terms = new ArrayList<>();
            terms.add(new Literal(xWord));
            terms.add(new Literal(yWord));
            head = new Literal(_hasSuperPartWord, terms);

            terms = new ArrayList<>();
            terms.add(new Literal(zWord));
            terms.add(new Literal(xWord));
            Literal superclass = new Literal(superclassWord, terms);

            body = new ArrayList<>();
            body.add(superclass);
            body.add(_hasPart);
            rules.add(new Rule(head, body, false));
        }

        return rules;
    }*/

    private static HashSet<Rule> CreateMeronymSubstanceRules(boolean shouldConsiderSuperRelation) {
        HashSet<Rule> rules = new HashSet<>();
        Word _hasSubstanceWord = new Word(0, "_hasSubstance", "_hasSubstance", "NN");
        Word hasSubstanceWord = new Word(0, "hasSubstance", "hasSubstance", "NN");
        Word xWord = new Word(0, "X", "X", "NN");
        Word yWord = new Word(0, "Y", "Y", "NN");
        Word zWord = new Word(0, "Z", "Z", "NN");

        List<Literal> terms = new ArrayList<>();
        terms.add(new Literal(xWord));
        terms.add(new Literal(yWord));
        Literal head = new Literal(_hasSubstanceWord, terms);

        List<Literal> body = new ArrayList<>();
        Literal hasSubstance = new Literal(hasSubstanceWord, terms);
        body.add(hasSubstance);

        rules.add(new Rule(head, body, false));
        body = new ArrayList<>();

        terms = new ArrayList<>();
        terms.add(new Literal(xWord));
        terms.add(new Literal(zWord));
        hasSubstance = new Literal(hasSubstanceWord, terms);

        terms = new ArrayList<>();
        terms.add(new Literal(zWord));
        terms.add(new Literal(yWord));
        Literal _hasSubstance = new Literal(_hasSubstanceWord, terms);

        body.add(hasSubstance);
        body.add(_hasSubstance);
        rules.add(new Rule(head, body, false));

        if(shouldConsiderSuperRelation){
            Word _hasSuperSubstanceWord = new Word(0, "_hasSuperSubstance", "_hasSuperSubstance", "NN");
            Word superclassWord = new Word(0, "superclass", "superclass", "NN");
            terms = new ArrayList<>();
            terms.add(new Literal(xWord));
            terms.add(new Literal(yWord));
            head = new Literal(_hasSuperSubstanceWord, terms);

            terms = new ArrayList<>();
            terms.add(new Literal(zWord));
            terms.add(new Literal(xWord));
            Literal superclass = new Literal(superclassWord, terms);

            body = new ArrayList<>();
            body.add(superclass);
            body.add(_hasSubstance);
            rules.add(new Rule(head, body, false));
        }

        return rules;
    }

    private static HashSet<Rule> CreateMeronymMemberRules(boolean shouldConsiderSuperRelation) {
        HashSet<Rule> rules = new HashSet<>();
        Word _hasMemberWord = new Word(0, "_hasMember", "_hasMember", "NN");
        Word hasMemberWord = new Word(0, "hasMember", "hasMember", "NN");
        Word xWord = new Word(0, "X", "X", "NN");
        Word yWord = new Word(0, "Y", "Y", "NN");
        Word zWord = new Word(0, "Z", "Z", "NN");

        List<Literal> terms = new ArrayList<>();
        terms.add(new Literal(xWord));
        terms.add(new Literal(yWord));
        Literal head = new Literal(_hasMemberWord, terms);

        List<Literal> body = new ArrayList<>();
        Literal hasMember = new Literal(hasMemberWord, terms);
        body.add(hasMember);

        rules.add(new Rule(head, body, false));
        body = new ArrayList<>();

        terms = new ArrayList<>();
        terms.add(new Literal(xWord));
        terms.add(new Literal(zWord));
        hasMember = new Literal(hasMemberWord, terms);

        terms = new ArrayList<>();
        terms.add(new Literal(zWord));
        terms.add(new Literal(yWord));
        Literal _hasMember = new Literal(_hasMemberWord, terms);

        body.add(hasMember);
        body.add(_hasMember);
        rules.add(new Rule(head, body, false));

        if(shouldConsiderSuperRelation){
            Word _hasSuperMemberWord = new Word(0, "_hasSuperMember", "_hasSuperMember", "NN");
            Word superclassWord = new Word(0, "superclass", "superclass", "NN");
            terms = new ArrayList<>();
            terms.add(new Literal(xWord));
            terms.add(new Literal(yWord));
            head = new Literal(_hasSuperMemberWord, terms);

            terms = new ArrayList<>();
            terms.add(new Literal(zWord));
            terms.add(new Literal(xWord));
            Literal superclass = new Literal(superclassWord, terms);

            body = new ArrayList<>();
            body.add(superclass);
            body.add(_hasMember);
            rules.add(new Rule(head, body, false));
        }

        return rules;
    }

    private static HashSet<Rule> CreateMeronymBaseRules() {
        HashSet<Rule> rules = new HashSet<>();
        Word _hasSuperPartWord = new Word(0, "_hasSuperPart", "_hasSuperPart", "NN");
        Word _hasSuperSubstanceWord = new Word(0, "_hasSuperSubstance", "_hasSuperSubstance", "NN");
        Word _hasSuperMemberWord = new Word(0, "_hasSuperMember", "_hasSuperMember", "NN");
        Word _hasPartWord = new Word(0, "_hasPart", "_hasPart", "NN");
        Word _hasWord = new Word(0, "_has", "_has", "NN");
        Word xWord = new Word(0, "X", "X", "NN");
        Word yWord = new Word(0, "Y", "Y", "NN");

        List<Literal> terms = new ArrayList<>();
        terms.add(new Literal(xWord));
        terms.add(new Literal(yWord));
        Literal head = new Literal(_hasWord, terms);

        List<Literal> body = new ArrayList<>();
        Literal hasPart = new Literal(_hasPartWord, terms);
        body.add(hasPart);
        rules.add(new Rule(head, body, false));

        body = new ArrayList<>();
        Literal hasSuperPart = new Literal(_hasSuperPartWord, terms);
        body.add(hasSuperPart);
        rules.add(new Rule(head, body, false));

        body = new ArrayList<>();
        Literal hasSuperSubstance = new Literal(_hasSuperSubstanceWord, terms);
        body.add(hasSuperSubstance);
        rules.add(new Rule(head, body, false));

        body = new ArrayList<>();
        Literal hasSuperMember = new Literal(_hasSuperMemberWord, terms);
        body.add(hasSuperMember);
        rules.add(new Rule(head, body, false));

        return rules;
    }

    private static HashSet<Rule> ConvertToClassFacts(List<Concept> concepts) {
        HashSet<Rule> conceptRules = new HashSet<>();
        Word classWord = new Word(0, "class", "class", "NN");
        for(Concept concept : concepts){
            List<Literal> terms = new ArrayList<>();
            Word conceptWord = new Word(1, concept.baseConcept, concept.baseConcept, "NN");
            Word senseWord = new Word(1, concept.sense, concept.sense, "NN");
            terms.add(new Literal(conceptWord));
            terms.add(new Literal(senseWord));
            Literal head = new Literal(classWord, terms);
            Rule conceptRule = new Rule(head, false);
            conceptRules.add(conceptRule);
        }

        return conceptRules;
    }

    private static HashSet<Rule> ConvertToSuperClassFacts(List<Concept> concepts) {
        HashSet<Rule> rules = new HashSet<>();
        for(Concept concept : concepts) {
            Word predicateWord = new Word(0, "is_superclass", "is_superclass", "NN");
            Word subclassWord = new Word(1, concept.baseConcept, concept.baseConcept, "NN");
            Word senseWord = new Word(1, concept.sense, concept.sense, "NN");

            for (String sense : concept.hypernymMap.keySet()) {
                List<Concept> hypernyms = concept.hypernymMap.get(sense);
                for (Concept hypernym : hypernyms) {
                    List<Literal> terms = new ArrayList<>();
                    Word superclassWord = new Word(1, hypernym.baseConcept, hypernym.baseConcept, "NN");
                    terms.add(new Literal(superclassWord));
                    terms.add(new Literal(subclassWord));
                    terms.add(new Literal(senseWord));
                    Literal head = new Literal(predicateWord, terms);
                    Rule rule = new Rule(head, false);
                    rules.add(rule);
                }
            }
        }

        return rules;
    }

    private static HashSet<Rule> ConvertToMeronymPartFact(Concept concept) {
        HashSet<Rule> rules = new HashSet<>();
        Word predicateWord = new Word(0, "hasPart", "hasPart", "NN");
        Word classWord = new Word(1, concept.baseConcept, concept.baseConcept, "NN");

        for(String sense : concept.meronymPartMap.keySet()) {
            List<Concept> meronyms = concept.meronymPartMap.get(sense);
            for(Concept meronym : meronyms) {
                List<Literal> terms = new ArrayList<>();
                Word partWord = new Word(1, meronym.baseConcept, meronym.baseConcept, "NN");
                terms.add(new Literal(classWord));
                terms.add(new Literal(partWord));
                Literal head = new Literal(predicateWord, terms);
                Rule rule = new Rule(head, false);
                rules.add(rule);
            }
        }

       return rules;
    }

    private static HashSet<Rule> ConvertToMeronymMemberFact(Concept concept) {
        HashSet<Rule> rules = new HashSet<>();
        Word predicateWord = new Word(0, "hasMember", "hasMember", "NN");
        Word classWord = new Word(1, concept.baseConcept, concept.baseConcept, "NN");

        for(String sense : concept.meronymMemberMap.keySet()) {
            List<Concept> meronyms = concept.meronymMemberMap.get(sense);
            for(Concept meronym : meronyms) {
                List<Literal> terms = new ArrayList<>();
                Word partWord = new Word(1, meronym.baseConcept, meronym.baseConcept, "NN");
                terms.add(new Literal(classWord));
                terms.add(new Literal(partWord));
                Literal head = new Literal(predicateWord, terms);
                Rule rule = new Rule(head, false);
                rules.add(rule);
            }
        }

        return rules;
    }

    private static HashSet<Rule> ConvertToMeronymSubstance(Concept concept) {
        HashSet<Rule> rules = new HashSet<>();
        Word predicateWord = new Word(0, "hasSubstance", "hasSubstance", "NN");
        Word classWord = new Word(1, concept.baseConcept, concept.baseConcept, "NN");

        for(String sense : concept.meronymSubstanceMap.keySet()) {
            List<Concept> meronyms = concept.meronymSubstanceMap.get(sense);
            for(Concept meronym : meronyms) {
                List<Literal> terms = new ArrayList<>();
                Word partWord = new Word(1, meronym.baseConcept, meronym.baseConcept, "NN");
                terms.add(new Literal(classWord));
                terms.add(new Literal(partWord));
                Literal head = new Literal(predicateWord, terms);
                Rule rule = new Rule(head, false);
                rules.add(rule);
            }
        }

        return rules;
    }

    private static String GenerateASPCode(List<Rule> rules) {
        StringBuilder builder = new StringBuilder();
        for(Rule rule : rules){
            builder.append(rule.toString() + ".");
            builder.append("\n");
        }

        return builder.toString();
    }

    public static void WriteOntology(StorageManager manager, boolean shouldWriteToFile) throws IOException {
        for(Concept concept: conceptMap.values()){
            List<Concept> conceptList = new ArrayList<>();
            if(baseConceptMap.containsKey(concept.baseConcept)){
                conceptList = baseConceptMap.get(concept.baseConcept);
            }

            conceptList.add(concept);
            baseConceptMap.put(concept.baseConcept, conceptList);
        }

        for(String baseConcept : baseConceptMap.keySet()){
            List<Concept> concepts = baseConceptMap.get(baseConcept);
            String aspCode = GenerateConceptToASPCode(concepts);
            manager.writeConceptToFile(aspCode, baseConcept, null, shouldWriteToFile);
        }

        List<Rule> rules = new ArrayList<>();
        rules.addAll(CreateInheritanceRules());
        //rules.addAll(CreateMeronymPartRules(true));
        //rules.addAll(CreateMeronymSubstanceRules(true));
        //rules.addAll(CreateMeronymMemberRules(true));
        //rules.addAll(CreateMeronymBaseRules());
        String aspCode = GenerateASPCode(rules);
        manager.writeConceptToFile(aspCode, RULES_FILE, null, shouldWriteToFile);
    }

    public static void WriteStoryFacts(StorageManager manager, String aspCode, boolean shouldWriteToFile) throws IOException {
        ArrayList<String> headers = new ArrayList<>();
        for(String header : baseConceptMap.keySet()){
            header = Concept.GetSanitizedString(header);
            String relativeHeaderPath = String.format("%s\\\\%s", StorageManager.ONTOLOGY_FOLDER, header);
            headers.add(relativeHeaderPath);
        }

        headers.add(String.format("%s\\\\%s", StorageManager.ONTOLOGY_FOLDER, RULES_FILE));
        manager.writeStoryToFile(aspCode, headers, shouldWriteToFile);
    }
}
