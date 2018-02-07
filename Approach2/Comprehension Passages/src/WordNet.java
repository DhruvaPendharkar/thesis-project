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

    public static void BuildOntology(Set<String> nouns) throws IOException {
        WordNet.dictionary = TestDictionary();
        for(String noun : nouns) {
            GenerateHypernymOntology(noun);
        }

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
        return GenerateASPCode(rules);
    }

    private static HashSet<Rule> CreateInheritanceRules() {
        HashSet<Rule> rules = new HashSet<>();
        Word superclassWord = new Word("superclass");
        Word isSuperclassWord = new Word("is_superclass");
        Word xWord = new Word("X");
        Word kWord = new Word("K");
        Word yWord = new Word("Y");

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

    private static HashSet<Rule> ConvertToClassFacts(List<Concept> concepts) {
        HashSet<Rule> conceptRules = new HashSet<>();
        Word classWord = new Word("class");
        for(Concept concept : concepts){
            List<Literal> terms = new ArrayList<>();
            Word conceptWord = new Word(1, concept.baseConcept, concept.baseConcept, "NN", "", false);
            Word senseWord = new Word(1, concept.sense, concept.sense, "NN", "", false);
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
            Word predicateWord = new Word("is_superclass");
            Word subclassWord = new Word(1, concept.baseConcept, concept.baseConcept, "NN", "", false);
            Word senseWord = new Word(1, concept.sense, concept.sense, "NN", "", false);

            for (String sense : concept.hypernymMap.keySet()) {
                List<Concept> hypernyms = concept.hypernymMap.get(sense);
                for (Concept hypernym : hypernyms) {
                    List<Literal> terms = new ArrayList<>();
                    Word superclassWord = new Word(1, hypernym.baseConcept, hypernym.baseConcept, "NN", "", false);
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
            manager.WriteConceptToFile(aspCode, baseConcept, null, shouldWriteToFile);
        }

        List<Rule> rules = new ArrayList<>();
        rules.addAll(CreateInheritanceRules());
        //rules.addAll(CreateMeronymPartRules(true));
        //rules.addAll(CreateMeronymSubstanceRules(true));
        //rules.addAll(CreateMeronymMemberRules(true));
        //rules.addAll(CreateMeronymBaseRules());
        String aspCode = GenerateASPCode(rules);
        manager.WriteConceptToFile(aspCode, RULES_FILE, null, shouldWriteToFile);
    }

    public static void WriteStoryFacts(StorageManager manager, String aspCode, boolean shouldWriteToFile) throws IOException {
        ArrayList<String> headers = new ArrayList<>();
        for(String header : baseConceptMap.keySet()){
            header = Concept.GetSanitizedString(header);
            String relativeHeaderPath = String.format("%s\\\\%s", StorageManager.ONTOLOGY_FOLDER, header);
            headers.add(relativeHeaderPath);
        }

        headers.add(String.format("%s\\\\%s", StorageManager.ONTOLOGY_FOLDER, RULES_FILE));
        manager.WriteStoryToFile(aspCode, headers, shouldWriteToFile);
    }
}
