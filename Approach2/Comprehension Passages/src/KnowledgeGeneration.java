import java.io.*;
import java.util.*;

public class KnowledgeGeneration {

    public static final String END_OF_SENTENCE = "\\.";
    public static final boolean SHOULD_WRITE_TO_FILE = false;

    public static void main(String[] args) throws IOException {
	    String storyFilePath = "C:\\Users\\dhruv\\Desktop\\EventStory.txt";
        String outputFilePath = "C:\\Users\\dhruv\\Desktop\\Research\\sasp-1.1.0\\Story2_ASP.lp";
        String ontologyOutputBasePath = "C:\\Users\\dhruv\\Desktop\\Logic\\sasp-1.0.5\\sasp-1.0.5";

        StorageManager manager = new StorageManager(outputFilePath, ontologyOutputBasePath, storyFilePath);
        String content = manager.ReadFileContent();
        Sentence.SetupLexicalizedParser();
        List<Sentence> sentenceList = new ArrayList<>();
        String[] sentencesString = content.split(END_OF_SENTENCE);
        for(String sentenceString : sentencesString){
            Sentence sentence = Sentence.ParseSentence(sentenceString.trim());
            sentenceList.add(sentence);
        }

        TreeSet<Rule> knowledgeBase = new TreeSet<>();
        for(Sentence sentence : sentenceList){
            System.out.println(sentence.toString());
            Sentence.DependenciesToString(sentence);
            List<Rule> ruleList = sentence.GenerateRules();
            knowledgeBase.addAll(ruleList);
        }

        //WordNet.BuildOntology(nouns);
        //WordNet.WriteOntology(manager, SHOULD_WRITE_TO_FILE);
        //WordNet.WriteStoryFacts(manager, aspCode, SHOULD_WRITE_TO_FILE);
    }
}