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
public class CtenophoraStoryTest {
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
    // Ctenophora, commonly known as comb_jellies, is a phylum of animals that live in marine_waters worldwide.
    void TestSentenceOne() {
        String content = "Ctenophora, commonly known as comb_jellies, is a phylum of animals that live in " +
        "marine_waters worldwide";
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
    // Ctenophora's most distinctive feature is the combs, groups of cilia which the Ctenophora use for swimming.
    void TestSentenceTwo() {
        String content = "Ctenophora's most distinctive feature is the combs, groups of cilia which the Ctenophora " +
        "use for swimming.";
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
    // Ctenophora are the largest animals that swim by means of cilia.
    void TestSentenceThree() {
        String content = "Ctenophora are the largest animals that swim by means of cilia.";
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
    // Adults of various species range from a few millimeters to 1.5 m (4 ft 11 in) in size.
    void TestSentenceFour() {
        String content = "Adults of various species range from a few millimeters to 1.5 m (4 ft 11 in) in size.";
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
    // Like cnidarians, Ctenophora's bodies consist of a mass_of_jelly, with one layer of cells on the outside and
    // another lining the internal cavity.
    void TestSentenceFive() {
        String content = "Like cnidarians, Ctenophora's bodies consist of a mass_of_jelly, with one layer of cells on " +
        "the outside and another lining the internal cavity.";
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
    // In ctenophores, the layers of mass_of_jelly are two cells deep, while the layers in cnidarians are only one
    // cell deep.
    void TestSentenceSix() {
        String content = "In ctenophores, the layers of mass_of_jelly are two cells deep, while the layers in cnidarians " +
        "are only one cell deep.";
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
    // Some authors combined ctenophores and cnidarians in one phylum, Coelenterata, as both groups rely on water flow
    // through the body cavity for both digestion and respiration.
    void TestSentenceSeven() {
        String content = "Some authors combined ctenophores and cnidarians in one phylum, Coelenterata, as both groups " +
        "rely on water flow through the body cavity for both digestion and respiration.";
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
    // Increasing awareness of the differences persuaded more recent authors to classify them as separate phyla.
    void TestSentenceEight() {
        String content = "Increasing awareness of the differences persuaded more recent authors to classify them " +
        "as separate phyla.";
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