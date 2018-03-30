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
public class RhineStoryTest {
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
    // The Rhine, is a European river that begins in the Swiss_canton of Graubünden in the southeastern_Swiss_Alps,
    // forms part of the Swiss-Austrian border, Swiss-Liechtenstein border, Swiss-German and then the Franco-German
    // border, then flows through the Rhineland and eventually empties into the North_Sea in the Netherlands.
    void TestSentenceOne() {
        String content = "The Rhine, is a European river that begins in the Swiss_canton of Graubunden in the " +
        "southeastern_Swiss_Alps, forms part of the Swiss-Austrian border, Swiss-Liechtenstein border, Swiss-German and " +
        "then the Franco-German border, then flows through the Rhineland and eventually empties into the North_Sea in " +
        "the Netherlands.";
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

        Assert.assertEquals(23, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(border, franco_german)"));
        Assert.assertTrue(ruleString.contains("_mod(border, swiss_austrian)"));
        Assert.assertTrue(ruleString.contains("_mod(border, swiss_liechtenstein)"));
        Assert.assertTrue(ruleString.contains("_mod(empty, eventually)"));
        Assert.assertTrue(ruleString.contains("_mod(flow, then)"));
        Assert.assertTrue(ruleString.contains("_property(2, begin, in, swiss_canton)"));
        Assert.assertTrue(ruleString.contains("_property(2, graubunden, in, southeastern_swiss_alps)"));
        Assert.assertTrue(ruleString.contains("_property(2, swiss_canton, of, graubunden)"));
        Assert.assertTrue(ruleString.contains("_property(3, flow, through, rhineland)"));
        Assert.assertTrue(ruleString.contains("_property(4, empty, into, north_sea)"));
        Assert.assertTrue(ruleString.contains("_property(4, north_sea, in, netherland)"));
        Assert.assertTrue(ruleString.contains("_property(5, part, of, border)"));
        Assert.assertTrue(ruleString.contains("_property(5, part, of, swiss_german)"));
        Assert.assertTrue(ruleString.contains("_relation(5, 3, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(5, 4, _conj)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, begin, rhine, null)"));
        Assert.assertTrue(ruleString.contains("event(2, begin, river, null)"));
        Assert.assertTrue(ruleString.contains("event(3, flow, rhine, null)"));
        Assert.assertTrue(ruleString.contains("event(4, empty, rhine, null)"));
        Assert.assertTrue(ruleString.contains("event(5, form, rhine, part)"));
        Assert.assertTrue(ruleString.contains("event(5, form, rhine, part_of_border)"));
        Assert.assertTrue(ruleString.contains("event(5, form, rhine, part_of_swiss_german)"));
    }

    @Test
    // The biggest city on the river Rhine is Cologne in Germany with a population of more than 1,050,000 people.
    void TestSentenceTwo() {
        String content = "The biggest city on the river, Rhine, is Cologne in Germany with a population of more than " +
        "1,050,000 people.";
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

        Assert.assertEquals(10, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(river, rhine)"));
        Assert.assertTrue(ruleString.contains("_mod(city, biggest)"));
        Assert.assertTrue(ruleString.contains("_mod(people, '1,050,000')"));
        Assert.assertTrue(ruleString.contains("_property(city, on, river)"));
        Assert.assertTrue(ruleString.contains("_property(cologne, in, germany)"));
        Assert.assertTrue(ruleString.contains("_property(cologne, with, population)"));
        Assert.assertTrue(ruleString.contains("_property(population, of, '1,050,000_people')"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("river(rhine)"));
        Assert.assertTrue(ruleString.contains("number('1,050,000')"));
    }

    @Test
    // The Rhine is the second-longest river in Central and Western_Europe, after the Danube, at about 1,230 kilometre,
    // with an average discharge of about 2,900 m3/s.
    void TestSentenceThree_Failed() {
        String content = "The Rhine is the second-longest river in Central and Western_Europe, after the Danube, at " +
        "about 1,230 kilometre, with an average discharge of about 2,900 m3/s.";
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

        Assert.assertEquals(15, ruleString.size());
    }
}