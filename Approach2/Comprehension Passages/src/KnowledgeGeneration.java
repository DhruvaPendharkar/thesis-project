import edu.mit.jwi.item.IIndexWord;
import edu.mit.jwi.item.POS;
import javafx.util.Pair;

import java.io.*;
import java.util.*;

public class KnowledgeGeneration {

    public static final String END_OF_SENTENCE = "\\.";
    public static final boolean SHOULD_WRITE_TO_FILE = false;

    public static Pair<List<Rule>, List<Rule>> RepresentKnowledge(StorageManager manager, String content) throws IOException {
        List<Rule> storyRules = new ArrayList<>();
        Sentence.SetupLexicalizedParser();
        List<Sentence> sentenceList = new ArrayList<>();
        String[] sentencesString = content.split(END_OF_SENTENCE);
        Set<String> nouns = new HashSet<>();
        for(String sentenceString : sentencesString){
            Sentence sentence = Sentence.ParseSentence(sentenceString.trim());
            sentenceList.add(sentence);
            nouns.addAll(sentence.GetAllNouns());
            storyRules.addAll(sentence.GenerateRules());
        }

        WordNet.BuildOntology(nouns);
        List<Rule> ontologyRules = WordNet.WriteOntology(manager, SHOULD_WRITE_TO_FILE);
        List<Rule> baseRules = WordNet.GenerateBaseRulesForNouns(nouns);
        storyRules.addAll(baseRules);
        return new Pair<>(storyRules, ontologyRules);
    }
}