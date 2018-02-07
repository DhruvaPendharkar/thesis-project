import edu.stanford.nlp.ling.CoreAnnotations;
import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.ling.SentenceUtils;
import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import edu.stanford.nlp.pipeline.Annotation;
import edu.stanford.nlp.pipeline.StanfordCoreNLP;
import edu.stanford.nlp.trees.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

/**
 * Created by dhruv on 9/24/2017.
 */
public class Sentence {

    public static final String DELIMITER = " ";
    public static LexicalizedParser parser;
    public static StanfordCoreNLP pipeline;

    private String sentenceString = "";
    private List<TypedDependency> dependencies = null;
    protected List<Word> wordList = null;
    protected Word semanticRoot = null;

    public static void SetupLexicalizedParser() {
        parser = LexicalizedParser.loadModel("edu/stanford/nlp/models/lexparser/englishPCFG.ser.gz");
        Properties props = new Properties();
        props.setProperty("annotators","tokenize, ssplit, pos, lemma");
        pipeline = new StanfordCoreNLP(props);
    }

    protected Sentence(String sentence) {
        sentence = Sentence.SanitizeString(sentence);
        List<TypedDependency> dependencies = GetDependencies(sentence);
        this.sentenceString = sentence;
        this.dependencies = dependencies;
        this.wordList = ProcessSentence(sentence);
        this.semanticRoot = GenerateSemanticTree(dependencies, wordList);
    }

    private static String SanitizeString(String sentence) {
        sentence = sentence.replaceAll(",", "");
        sentence = sentence.replaceAll("\\?", "");
        sentence = sentence.toLowerCase();
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

    private static List<Word> ProcessSentence(String sentenceString) {
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
                Word word = new Word(index, wordString, lemmaString, posTag);
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
                independentWord.addDependency(dependentWord, dependency.reln().getShortName());
            }
        }

        return rootWord;
    }

    public List<Rule> GenerateRules() {
        List<Rule> rulesList = new ArrayList<>();
        List<Rule> rules;
        for(Word word : wordList){
            if(word.getPOSTag().startsWith("VB")){
                rules = word.GetRuleByRelationPair("nmod", "dobj", false);
                if(rules != null) rulesList.addAll(rules);
                rules = word.GetRuleByRelationPair("nmod", "nsubj", false);
                if(rules != null) rulesList.addAll(rules);
                rules = word.GetRuleByRelationPair("expl", "dobj", false);
                if(rules != null) rulesList.addAll(rules);
                rules = word.GetRuleByRelationPair("dobj", "nsubj", false);
                if(rules != null) rulesList.addAll(rules);
                //rules = word.GetRuleByRelationPair("compound:prt", "nsubj");
                //if(rules != null) rulesList.addAll(rules);
                rules = word.GetRuleByRelationPair("nmod", "nsubjpass", false);
                if(rules != null) rulesList.addAll(rules);
            }
            else if(word.getPOSTag().startsWith("NN")) {
                rules = word.GetAdjectiveRule();
                if(rules != null) rulesList.addAll(rules);
            }
        }

        return rulesList;
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
}
