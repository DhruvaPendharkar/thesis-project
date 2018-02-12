import edu.stanford.nlp.ling.CoreAnnotations;
import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.ling.SentenceUtils;
import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.trees.*;

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

    public static void SetupLexicalizedParser() {
        parser = LexicalizedParser.loadModel("edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz");
        Properties props = new Properties();
        props.setProperty("annotators","tokenize, ssplit, pos, lemma ner");
        pipeline = new StanfordCoreNLP(props);
    }

    protected Sentence(String sentence) {
        sentence = Sentence.SanitizeString(sentence);
        List<TypedDependency> dependencies = GetDependencies(sentence);
        this.sentenceString = sentence;
        this.dependencies = dependencies;
        boolean isQuestion = this.getClass() == Question.class;
        this.wordList = ProcessSentence(sentence, isQuestion);
        this.semanticRoot = GenerateSemanticTree(dependencies, wordList);
    }

    private static String SanitizeString(String sentence) {
        sentence = sentence.replaceAll(",", "");
        sentence = sentence.replaceAll("\\?", "");
        return sentence.trim();
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

    private static List<Word> ProcessSentence(String sentenceString, boolean isQuestion) {
        List<Word> wordList = new ArrayList<>();
        sentenceString = sentenceString.replaceAll(",", "");
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
                Word word = new Word(index, wordString, lemmaString, posTag, NERTag, isQuestion);
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
                independentWord.AddDependency(dependentWord, dependency.reln().getShortName());
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
        List<Rule> rules = new ArrayList<>();

        for(Word word : this.wordList){
            rules.addAll(word.GenerateRules(false));
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
