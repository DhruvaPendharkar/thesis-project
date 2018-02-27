import edu.stanford.nlp.ling.CoreAnnotations;
import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.ling.SentenceUtils;
import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.trees.*;
import javafx.util.Pair;

import java.util.*;

/**
 * Created by dhruv on 9/24/2017.
 */
public class Sentence {

    public static final String DELIMITER = " ";
    public static LexicalizedParser parser;
    public static StanfordCoreNLP pipeline;

    private String sentenceString = "";
    private List<TypedDependency> dependencies = null;
    protected Word semanticRoot = null;
    protected List<Word> wordList = new ArrayList<>();
    protected List<Rule> preProcessRules = new ArrayList<>();

    public static void SetupLexicalizedParser() {
        parser = LexicalizedParser.loadModel("edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz");
        Properties props = new Properties();
        props.setProperty("annotators","tokenize, ssplit, pos, lemma ner");
        pipeline = new StanfordCoreNLP(props);
    }

    protected Sentence(String sentence) {
        int currentEventId = Word.eventId;
        List<Word> wordList = ProcessSentence(sentence);
        sentence = PreprocessSentence(wordList);
        Word.eventId = currentEventId;
        this.wordList = ProcessSentence(sentence);
        List<TypedDependency> dependencies = GetDependencies(sentence);
        this.sentenceString = sentence;
        this.dependencies = dependencies;
        this.semanticRoot = GenerateSemanticTree(dependencies, this.wordList);
    }

    private String PreprocessSentence(List<Word> inputList) {
        StringBuilder builder = new StringBuilder();
        Pair<List<Word>, List<Rule>> result = ProcessOrganizations(inputList);
        inputList = result.getKey();
        this.preProcessRules.addAll(result.getValue());

        result = ProcessDates(inputList);
        inputList = result.getKey();
        this.preProcessRules.addAll(result.getValue());

        result = ProcessBirthAndDeathDates(inputList);
        inputList = result.getKey();
        this.preProcessRules.addAll(result.getValue());

        this.preProcessRules.addAll(GeneratePreProcessRules(inputList));
        boolean hasFoundBracket = false;
        for(Word word : inputList){
            if(word.getWord().equalsIgnoreCase("-LRB-")) hasFoundBracket = true;
            else if(word.getWord().equalsIgnoreCase("-RRB-")) {
                hasFoundBracket = false;
                continue;
            }
            if(hasFoundBracket) continue;
            builder.append(word.getWord() + " ");
        }

        return builder.toString().trim();
    }

    private Pair<List<Word>, List<Rule>> ProcessBirthAndDeathDates(List<Word> inputList) {
        List<Rule> rules = new ArrayList<>();
        List<Word> wordList = new ArrayList<>();
        List<Word> wordCollection = new ArrayList<>();
        boolean hasFoundBracket = false;
        Word previousNounWord = inputList.size() > 0 ? inputList.get(0) : null;
        if(previousNounWord != null) wordList.add(previousNounWord);
        for(int i=1; i<inputList.size(); i++){
            Word currentWord = inputList.get(i);
            if(currentWord.getWord().equalsIgnoreCase("-LRB-")) {
                hasFoundBracket = true;
                wordCollection = new ArrayList<>();
                wordCollection.add(currentWord);
                continue;
            }
            else if(currentWord.getWord().equalsIgnoreCase("-RRB-")) {
                hasFoundBracket = false;
                wordCollection.add(currentWord);
                if(!CheckForLifeSpanFormat(wordCollection) || previousNounWord == null) {
                    wordList.addAll(wordCollection);
                    continue;
                }

                Word birthDate = wordCollection.get(1);
                Word deathDate = wordCollection.get(3);
                Word birthDateWord = new Word("_start_date", false);
                Word deathDateWord = new Word("_end_date", false);

                List<Literal> terms = new ArrayList<>();
                terms.add(new Literal(previousNounWord));
                terms.add(new Literal(birthDate));
                Literal head = new Literal(birthDateWord, terms);
                Rule rule = new Rule(head, null, false);
                rules.add(rule);

                terms = new ArrayList<>();
                terms.add(new Literal(previousNounWord));
                terms.add(new Literal(deathDate));
                head = new Literal(deathDateWord, terms);
                rule = new Rule(head, null, false);
                rules.add(rule);
                continue;
            }
            if(hasFoundBracket) {
                wordCollection.add(currentWord);
                continue;
            }
            if(currentWord.IsNoun() && !hasFoundBracket) previousNounWord = currentWord;
            wordList.add(currentWord);
        }

        return new Pair<>(wordList, rules);
    }

    private boolean CheckForLifeSpanFormat(List<Word> wordCollection) {
        if(wordCollection.size() != 5) return false;
        if(!wordCollection.get(0).getWord().equalsIgnoreCase("-LRB-")) return false;
        if(wordCollection.get(1).getNERTag() != NamedEntityTagger.NamedEntityTags.DATE) return false;
        if(wordCollection.get(3).getNERTag() != NamedEntityTagger.NamedEntityTags.DATE) return false;
        if(!wordCollection.get(2).getWord().equalsIgnoreCase("--")) return false;
        if(!wordCollection.get(4).getWord().equalsIgnoreCase("-RRB-")) return false;
        return true;
    }

    private Pair<List<Word>, List<Rule>> ProcessOrganizations(List<Word> inputList) {
        List<Rule> rules = new ArrayList<>();
        List<Word> wordList = new ArrayList<>();
        List<Word> organizationWords = new ArrayList<>();
        Word orgWord = new Word("organization", false);
        for(Word word : inputList){
            if(word.getPOSTag().equals("NNP") && word.getNERTag() == NamedEntityTagger.NamedEntityTags.ORGANIZATION){
                organizationWords.add(word);
            }
            else {
                if(organizationWords.size() != 0){
                    Word organization = Word.CreateCompoundWord(organizationWords);
                    organization.SetNERTag(NamedEntityTagger.NamedEntityTags.ORGANIZATION);
                    wordList.add(organization);
                    organizationWords = new ArrayList<>();

                    List<Literal> terms = new ArrayList<>();
                    terms.add(new Literal(organization));
                    Literal head = new Literal(orgWord, terms);
                    rules.add(new Rule(head, null, false));
                }
                wordList.add(word);
            }
        }

        if(organizationWords.size() != 0){
            Word organization = Word.CreateCompoundWord(organizationWords);
            organization.SetNERTag(NamedEntityTagger.NamedEntityTags.ORGANIZATION);
            wordList.add(organization);

            List<Literal> terms = new ArrayList<>();
            terms.add(new Literal(organization));
            Literal head = new Literal(orgWord, terms);
            rules.add(new Rule(head, null, false));
        }

        return new Pair<>(wordList, rules);
    }

    private Pair<List<Word>, List<Rule>> ProcessDates(List<Word> inputList) {
        List<Rule> rules = new ArrayList<>();
        List<Word> wordList = new ArrayList<>();
        List<Word> timeWords = new ArrayList<>();
        Word timeWord = new Word("time", false);
        for(Word word : inputList){
            if(word.getNERTag() == NamedEntityTagger.NamedEntityTags.DATE && !word.getPOSTag().equals(":")){
                timeWords.add(word);
            }
            else {
                if(timeWords.size() != 0){
                    Word date = Word.CreateCompoundWord(timeWords);
                    date.SetNERTag(NamedEntityTagger.NamedEntityTags.DATE);
                    wordList.add(date);
                    timeWords = new ArrayList<>();

                    List<Literal> terms = new ArrayList<>();
                    terms.add(new Literal(date));
                    Literal head = new Literal(timeWord, terms);
                    rules.add(new Rule(head, null, false));
                }
                wordList.add(word);
            }
        }

        if(timeWords.size() != 0){
            Word date = Word.CreateCompoundWord(timeWords);
            date.SetNERTag(NamedEntityTagger.NamedEntityTags.DATE);
            wordList.add(date);

            List<Literal> terms = new ArrayList<>();
            terms.add(new Literal(date));
            Literal head = new Literal(timeWord, terms);
            rules.add(new Rule(head, null, false));
        }

        return new Pair<>(wordList, rules);
    }

    private List<Rule> GeneratePreProcessRules(List<Word> inputList) {
        List<Rule> rules = new ArrayList<>();
        rules.addAll(GenerateAbbreviationRules(inputList));
        return rules;
    }

    private List<Rule> GenerateAbbreviationRules(List<Word> inputList) {
        // This would only check if the abbreviation is ahead of the long form
        // e.g. National_Football_League (NFL)
        List<Rule> rules = new ArrayList<>();
        List<Word> wordCollection = new ArrayList<>();
        boolean hasFoundBracket = false;
        Word previousNounWord = null;
        for(int i=1; i<inputList.size(); i++){
            Word currentWord = inputList.get(i);
            if(currentWord.getWord().equalsIgnoreCase("-LRB-")) {
                hasFoundBracket = true;
                wordCollection = new ArrayList<>();
                continue;
            }
            else if(currentWord.getWord().equalsIgnoreCase("-RRB-")) {
                hasFoundBracket = false;
                if(previousNounWord == null) continue;
                Word predicateWord = new Word("_abbreviation", false);
                List<Literal> terms = new ArrayList<>();
                Word abbreviation = Word.CreateCompoundWord(wordCollection);
                terms.add(new Literal(abbreviation));
                terms.add(new Literal(new Word(previousNounWord.getWord().toLowerCase(), false)));
                Literal head = new Literal(predicateWord, terms);
                Rule rule = new Rule(head, null, false);
                rules.add(rule);
                continue;
            }
            if(hasFoundBracket) wordCollection.add(currentWord);
            if(currentWord.IsNoun() && !hasFoundBracket) previousNounWord = currentWord;
        }

        return rules;
    }

    private static List<TypedDependency> GetDependencies(String sentence) {
        String[] words = String.format("%s .", sentence).split(DELIMITER);
        List<CoreLabel> rawWords = SentenceUtils.toCoreLabelList(words);
        Tree parse = parser.apply(rawWords);
        TreebankLanguagePack tlp = new PennTreebankLanguagePack();
        GrammaticalStructureFactory grammaticalStructureFactory = tlp.grammaticalStructureFactory();
        GrammaticalStructure grammaticalStructure = grammaticalStructureFactory.newGrammaticalStructure(parse);
        List<TypedDependency> dependencies = grammaticalStructure.typedDependenciesCCprocessed();
        return dependencies;
    }

    private static List<Word> ProcessSentence(String sentenceString) {
        List<Word> wordList = new ArrayList<>();
        Annotation annotation = new Annotation(sentenceString);
        pipeline.annotate(annotation);
        // For multiple sentences
        //List<CoreMap> sentences = annotation.get(CoreAnnotations.SentencesAnnotation.class);
        int index = 1;
        for (CoreLabel token: annotation.get(CoreAnnotations.TokensAnnotation.class)) {
                String wordString = token.get(CoreAnnotations.TextAnnotation.class);
                String lemmaString = token.getString(CoreAnnotations.LemmaAnnotation.class);
                String posTag = token.get(CoreAnnotations.PartOfSpeechAnnotation.class);
                String NERTag = token.get(CoreAnnotations.NamedEntityTagAnnotation.class);
                Word word = new Word(index, wordString, lemmaString, posTag, NERTag);
                wordList.add(word);
                index++;
        }

        return wordList;
    }

    private static Word GenerateSemanticTree(List<TypedDependency> dependencies, List<Word> wordList) {
        Word rootWord = null;
        HashMap<String, Word> wordMap = new HashMap<>();
        for(Word word : wordList) {
            wordMap.put(word.toString(), word);
        }

        for(TypedDependency dependency : dependencies){
            String dependantString = dependency.dep().backingLabel().toString();
            String independantString = dependency.gov().backingLabel().toString();
            if(dependency.reln().getShortName().equals("root")){
                if(wordMap.containsKey(dependantString)){
                    rootWord = wordMap.get(dependantString);
                    continue;
                }
            }

            Word dependentWord = null;
            if(wordMap.containsKey(dependantString)){
                dependentWord = wordMap.get(dependantString);
            }

            Word independentWord = null;
            if(wordMap.containsKey(independantString)){
                independentWord = wordMap.get(independantString);
            }

            if(independentWord != null && dependentWord != null){
                independentWord.AddDependency(dependentWord, dependency.reln());
            }
        }

        return rootWord;
    }

    public static String DependenciesToString(Sentence sentence) {
        StringBuilder builder = new StringBuilder();
        for(TypedDependency dependency : sentence.dependencies){
            builder.append(dependency.toString() + "\n");
        }

        return builder.toString();
    }

    public List<Rule> GenerateRules() {
        List<Rule> rules = this.preProcessRules;

        for(Word word : this.wordList){
            if(word.getPOSTag().equalsIgnoreCase(",")) continue;
            rules.addAll(word.GenerateRules());
        }

        rules.addAll(GenerateAlternateCopulaRules());
        return rules;
    }

    private List<Rule> GenerateAlternateCopulaRules() {
        List<Rule> rules = new ArrayList<>();
        for(Word word : this.wordList){
            if(word.IsNoun() || word.IsAdjective()){
                rules.addAll(word.GenerateAlternateCopulaRules(this.wordList));
            }
        }

        return rules;
    }

    public static Sentence ParseSentence(String sentence){
        if(IsQuestion(sentence)){
            return new Question(sentence);
        }

        return new Sentence(sentence);
    }

    private static boolean IsQuestion(String sentence) {
        if(sentence.endsWith("?"))
            return true;
        return false;
    }

    @Override
    public String toString() {
        return sentenceString;
    }

    public List<String> GetAllNouns() {
        List<String> nouns = new ArrayList<>();
        for(Word word : this.wordList){
            if(word.getPOSTag().equals("NN") ||
                word.getPOSTag().equals("NNS")){
                nouns.add(word.getLemma());
            }
        }
        return nouns;
    }
}
