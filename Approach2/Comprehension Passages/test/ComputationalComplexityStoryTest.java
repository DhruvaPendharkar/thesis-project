import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

/**
 * Created by dhruv on 2/21/2018.
 */
public class ComputationalComplexityStoryTest {
    @BeforeAll
    static void TestSetupParser() {
        Sentence.SetupLexicalizedParser();
        Assert.assertNotNull(Sentence.parser);
        Assert.assertNotNull(Sentence.pipeline);
    }

    @BeforeEach
    void InitializeTest(){
        Word.eventId = 1;
    }

    @Test
    // Computational complexity theory is a branch of the theory of computation in theoretical computer science
    // that focuses on classifying computational problems according to their inherent difficulty, and relating
    // those classes to each other.
    void TestSentenceOne() {
        String content = "The distinct cultural and ethnic identity of the Normans emerged initially in the first " +
        "half of the 10th century, and the cultural and ethnic identity continued to evolve over the succeeding " +
        "centuries.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // A computational problem is understood to be a task that is in principle amenable to being solved by a computer,
    // which is equivalent to stating that the problem may be solved by mechanical application of mathematical steps,
    // such as an algorithm.
    void TestSentenceTwo() {
        String content = "A computational problem is understood to be a task that is in principle amenable to being " +
        "solved by a computer, which is equivalent to stating that the problem may be solved by mechanical application " +
        "of mathematical steps, such as an algorithm.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(0, ruleString.size());
    }
}
