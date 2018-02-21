import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

/**
 * Created by dhruv on 2/20/2018.
 */
public class NormansStoryTest {
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
    // The Normans were the people, who in the 10th and 11th centuries gave their name to Normandy,
    // a region in France.
    void TestSentenceOne() {
        String content = "The Normans were the people who, in the 10th and 11th centuries, gave Norman's name to " +
        "Normandy, which is a region in France.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(11, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(norman, people)"));
        Assert.assertTrue(ruleString.contains("_is(normandy, region)"));
        Assert.assertTrue(ruleString.contains("_mod(century, '10th')"));
        Assert.assertTrue(ruleString.contains("_mod(century, '11th')"));
        Assert.assertTrue(ruleString.contains("_property(give, in(century))"));
        Assert.assertTrue(ruleString.contains("_property(give, to(normandy))"));
        Assert.assertTrue(ruleString.contains("_property(region, in(france))"));
        Assert.assertTrue(ruleString.contains("_possess(norman, name)"));
        Assert.assertTrue(ruleString.contains("people(norman)"));
        Assert.assertTrue(ruleString.contains("region(normandy)"));
        Assert.assertTrue(ruleString.contains("event(2, give, people, name)"));
    }

    @Test
    // Normans were descended from the Norse raiders and pirates from Denmark, Iceland and Norway who,
    // under Normans leader Rollo, agreed to swear fealty to King_Charles_III of West_Francia.
    void TestSentenceTwo() {
        String content = "Normans descended from the Norse raiders and pirates from Denmark in Iceland " +
        "and Norway, Normans, under Normans's leader, Rollo, agreed to swear fealty to King_Charles_III of West_Francia.";
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
    // Through generations of assimilation and mixing with the native Frankish and Roman-Gaulish populations,
    // Normans's descendants would gradually merge with the Carolingian_based cultures of West_Francia.
    void TestSentenceThree() {
        String content = "Through generations of assimilation and mixing with the native Frankish and Roman-Gaulish " +
        "populations, Normans's descendants would gradually merge with the Carolingian_based cultures of " +
        "West_Francia.";
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
    // The distinct cultural and ethnic identity of the Normans emerged initially in the first half of the 10th
    // century, and the cultural and ethnic identity continued to evolve over the succeeding centuries.
    void TestSentenceFour() {
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
}
