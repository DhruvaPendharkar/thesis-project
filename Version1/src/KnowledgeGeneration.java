import java.io.*;
import java.util.*;

public class KnowledgeGeneration {

    public static final String END_OF_SENTENCE = "\\.";
    public static final boolean SHOULD_WRITE_TO_FILE = false;

    public static void main(String[] args) throws IOException {
	    String storyFilePath = "C:\\Users\\dhruv\\Desktop\\Research\\sasp-1.1.0\\Story2.txt";
        String outputFilePath = "C:\\Users\\dhruv\\Desktop\\Research\\sasp-1.1.0\\Story2_ASP.lp";
        String ontologyOutputBasePath = "C:\\Users\\dhruv\\Desktop\\Logic\\sasp-1.0.5\\sasp-1.0.5";

        StorageManager manager = new StorageManager(outputFilePath, ontologyOutputBasePath, storyFilePath);
        String content = manager.readFileContent();
        Sentence.SetupLexicalizedParser();
        List<Sentence> sentenceList = new ArrayList<>();
        String[] sentencesString = content.split(END_OF_SENTENCE);
        for(String sentenceString : sentencesString){
            Sentence sentence = Sentence.ParseSentence(sentenceString.trim());
            sentenceList.add(sentence);
        }

        TreeSet<Rule> knowledgeBase = new TreeSet<>();
        for(Sentence sentence : sentenceList){
            List<Rule> ruleList = sentence.GenerateRules();
            knowledgeBase.addAll(ruleList);
        }

        String aspCode = GenerateASPCode(knowledgeBase);

        /*List<String> questions = new ArrayList<>();
        questions.add("Where did the lion live ?");
        questions.add("How was the meal ?");
        questions.add("Where did the lion sleep ?");
        questions.add("How was the mouse ?");
        questions.add("Who played on the lion ?");
        List<Sentence> questionsList = new ArrayList<>();

        TreeSet<Rule> questionBase = new TreeSet<>();
        for(String questionString : questions){
            Sentence question = Sentence.ParseSentence(questionString);
            questionsList.add(question);
            List<Rule> ruleList = question.GenerateRules();
            System.out.println(questionString + " => ");
            for(Rule rule : ruleList) {
                System.out.println("\t" + rule.toString());
            }

            questionBase.addAll(ruleList);
            System.out.println();
        }
*/
        //Set<String> nouns = GetAllNouns(sentenceList);
        //WordNet.BuildOntology(nouns);
        //WordNet.WriteOntology(manager, SHOULD_WRITE_TO_FILE);
        WordNet.WriteStoryFacts(manager, aspCode, SHOULD_WRITE_TO_FILE);
    }

    private static Set<String> GetAllNouns(List<Sentence> sentenceList) {
        TreeSet<String> nouns = new TreeSet<>();
        for(Sentence sentence : sentenceList){
            for(Word word : sentence.wordList){
                if(word.getPOSTag().startsWith("NN")){
                    nouns.add(word.getLemma());
                }
            }
        }

        return nouns;
    }

    private static String GenerateASPCode(TreeSet<Rule> knowledgeRules) {
        StringBuilder builder = new StringBuilder();

        for(Rule rule : knowledgeRules){
            builder.append(rule.toString() + ".");
            builder.append("\n");
        }

        return builder.toString();
    }
}
