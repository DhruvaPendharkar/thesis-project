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
public class GenghisKhanStoryTest {
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
    // Genghis_Khan came to power by uniting many of the nomadic tribes of Northeast_Asia.
    void TestSentenceOne() {
        String content = "Genghis_Khan came to power by uniting many of the nomadic tribes of Northeast_Asia.";
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

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(tribe, nomadic)"));
        Assert.assertTrue(ruleString.contains("_property(1, come, to, power)"));
        Assert.assertTrue(ruleString.contains("_property(2, many, of, tribe)"));
        Assert.assertTrue(ruleString.contains("_property(2, tribe, of, northeast_asia)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, come, genghis_khan, null)"));
        Assert.assertTrue(ruleString.contains("event(2, unite, null, many)"));
        Assert.assertTrue(ruleString.contains("event(2, unite, null, many_of_tribe)"));
    }

    @Test
    // After founding the Mongol_Empire and being proclaimed as Genghis_Khan, Genghis_Khan started the Mongol invasions
    // that resulted in the conquest of most of Eurasia.
    void TestSentenceTwo() {
        String content = "After founding the Mongol_Empire and being proclaimed as Genghis_Khan, Genghis_Khan started " +
        "the Mongol invasion that resulted in the conquest of most of Eurasia.";
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
        Assert.assertTrue(ruleString.contains("_mod(invasion, mongol)"));
        Assert.assertTrue(ruleString.contains("_property(5, conquest, of, most)"));
        Assert.assertTrue(ruleString.contains("_property(5, most, of, eurasia)"));
        Assert.assertTrue(ruleString.contains("_property(3, proclaim, as, genghis_khan)"));
        Assert.assertTrue(ruleString.contains("_property(5, result, in, conquest)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 3, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 3, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, found, null, mongol_empire)"));
        Assert.assertTrue(ruleString.contains("event(2, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(3, proclaim, null, null)"));
        Assert.assertTrue(ruleString.contains("event(4, start, genghis_khan, invasion)"));
        Assert.assertTrue(ruleString.contains("event(4, start, genghis_khan, mongol_invasion)"));
        Assert.assertTrue(ruleString.contains("event(5, result, invasion, null)"));
        Assert.assertTrue(ruleString.contains("event(5, result, mongol_invasion, null)"));
    }

    @Test
    // The Mongol invasions included raids or invasions of the Qara Khitai, Caucasus, Khwarezmid Empire, Western Xia
    // and Jin dynasties.
    void TestSentenceThree_Failed() {
        String content = "The Mongol invasions included raids or invasions of the Qara_Khitai, Caucasus, Khwarezmid_Empire, " +
        "Western_Xia and Jin dynasties.";
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

        Assert.assertEquals(8, ruleString.size());
    }

    @Test
    // The Mongol invasion campaigns were often accompanied by wholesale massacres of the civilian populations especially
    // in the Khwarezmian and Xia controlled lands.
    void TestSentenceFour_Failed() {
        String content = "The Mongol invasion campaigns were often accompanied by wholesale massacres of the civilian " +
        "populations especially in the Khwarezmian and Xia lands.";
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

        Assert.assertEquals(9, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(accompany, often)"));
        Assert.assertTrue(ruleString.contains("_mod(campaign, mongol)"));
        Assert.assertTrue(ruleString.contains("_mod(massacre, wholesale)"));
        Assert.assertTrue(ruleString.contains("_mod(population, civilian)"));
        Assert.assertTrue(ruleString.contains("_property(2, accompany, _by, massacre)"));
        Assert.assertTrue(ruleString.contains("_property(2, accompany, in, land)"));
        Assert.assertTrue(ruleString.contains("_property(2, massacre, of, population)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, accompany, null, campaign)"));
    }

    @Test
    // By the end of Genghis_Khan's life, the Mongol_Empire occupied a substantial portion of Central_Asia and China.
    void TestSentenceFive() {
        String content = "By the end of Genghis_Khan's life, the Mongol_Empire occupied a substantial portion of " +
        "Central_Asia and China.";
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
    }
}