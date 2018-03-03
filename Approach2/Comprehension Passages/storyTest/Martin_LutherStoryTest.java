import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

/**
 * Created by dhruv on 2/19/2018.
 */
public class Martin_LutherStoryTest {
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
    // Martin_Luther (10 November 1483 – 18 February 1546) was a German professor of theology, composer, priest, former
    // monk and a seminal figure in the Protestant_Reformation.
    void TestSentenceOne() {
        String content = "Martin_Luther (10 November 1483 – 18 February 1546) was a German professor of theology, " +
        "composer, priest, former monk and a seminal figure in the Protestant_Reformation.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // Martin_Luther came to reject several teachings and practices of the Late_Medieval_Catholic_Church.
    void TestSentenceTwo() {
        String content = "Martin_Luther came to reject several teachings and practices of the " +
        "Late_Medieval_Catholic_Church.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // Martin_Luther strongly disputed the claim that freedom from God's punishment for sin could be purchased with
    // money.
    void TestSentenceThree() {
        String content = "Martin_Luther strongly disputed the claim that freedom from God's punishment for sin could " +
        "be purchased with money.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // Martin_Luther proposed an academic discussion of the power and usefulness of indulgences in his
    // Ninety_Five_Theses of 1517.
    void TestSentenceFour() {
        String content = "";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // Martin_Luther's refusal to retract all of his writings at the demand of Pope_Leo_X in 1520 and the
    // Holy_Roman_Emperor_Charles_V at the Diet_of_Worms in 1521 resulted in his excommunication by the Pope and
    // condemnation as an outlaw by the Emperor.
    void TestSentenceFive() {
        String content = "Martin_Luther's refusal to retract all of his writings at the demand of Pope_Leo_X in 1520 " +
        "and the Holy_Roman_Emperor_Charles_V at the Diet_of_Worms in 1521 resulted in his excommunication by the Pope " +
        "and condemnation as an outlaw by the Emperor.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }
}