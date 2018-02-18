import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/**
 * Created by dhruv on 2/3/2018.
 */

class SentenceTest {
    @BeforeAll
    static void TestSetupParser() {
        Sentence.SetupLexicalizedParser();
        Assert.assertNotNull(Sentence.parser);
        Assert.assertNotNull(Sentence.pipeline);
    }

    @Test
    void TestDependenciesToString() {
        Sentence sentence = new Sentence("I live in Dallas.");
        String dependenciesString = Sentence.DependenciesToString(sentence);
        String[] dependencies = dependenciesString.split("\n");
        List<String> dependencyList = Arrays.asList(dependencies);
        Assert.assertTrue(dependencyList.contains("nsubj(live-2, i-1)"));
        Assert.assertTrue(dependencyList.contains("root(ROOT-0, live-2)"));
        Assert.assertTrue(dependencyList.contains("case(dallas-4, in-3)"));
        Assert.assertTrue(dependencyList.contains("nmod:in(live-2, dallas-4)"));
    }

    @Test
    void TestGenerateRules() {
        Word.eventId = 1;
        Sentence sentence = Sentence.ParseSentence("I live in London");
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules) ruleString.add(rule.toString());
        Assert.assertTrue(ruleString.contains("event(1, live, i, null)"));
        Assert.assertTrue(ruleString.contains("_property(live, in(london))"));
    }

    @Test
    void TestParseSentence() {
        Sentence sentence = Sentence.ParseSentence("I live in Dallas.");
        Assert.assertNotNull(sentence);
        Sentence question = Sentence.ParseSentence("What is your name?");
        Assert.assertNotNull(question);
    }

    @Test
    void TestGetSentenceToString() {
        Sentence sentence = new Sentence("I live in Dallas.");
        Assert.assertEquals("i live in dallas .", sentence.toString());
    }
}