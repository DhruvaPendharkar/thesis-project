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
public class GengisKhanStoryTest {
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
        Assert.assertTrue(ruleString.contains("_property(come, to(power))"));
        Assert.assertTrue(ruleString.contains("_property(many, of(tribe))"));
        Assert.assertTrue(ruleString.contains("_property(tribe, of(northeast_asia))"));
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

        Assert.assertEquals(14, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(invasion, mongol)"));
        Assert.assertTrue(ruleString.contains("_property(conquest, of(most))"));
        Assert.assertTrue(ruleString.contains("_property(most, of(eurasia))"));
        Assert.assertTrue(ruleString.contains("_property(proclaim, as(genghis_khan))"));
        Assert.assertTrue(ruleString.contains("_property(result, in(conquest))"));
        Assert.assertTrue(ruleString.contains("_relation(1, 3, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 3, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, found, null, mongol_empire)"));
        Assert.assertTrue(ruleString.contains("event(3, proclaim, null, null)"));
        Assert.assertTrue(ruleString.contains("event(4, start, genghis_khan, invasion)"));
        Assert.assertTrue(ruleString.contains("event(4, start, genghis_khan, mongol_invasion)"));
        Assert.assertTrue(ruleString.contains("event(5, result, invasion, null)"));
        Assert.assertTrue(ruleString.contains("event(5, result, mongol_invasion, null)"));
    }

    @Test
    // The Mongol invasions included raids or invasions of the Qara Khitai, Caucasus, Khwarezmid Empire, Western Xia
    // and Jin dynasties.
    void TestSentenceThree() {
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

        Assert.assertEquals(13, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(invasion, mongol)"));
        Assert.assertTrue(ruleString.contains("_property(raid, of(dynasty))"));
        Assert.assertTrue(ruleString.contains("_property(raid, of(caucasus_dynasties))"));
        Assert.assertTrue(ruleString.contains("_property(raid, of(khwarezmid_empire_dynasties))"));
        Assert.assertTrue(ruleString.contains("_property(raid, of(western_xia_dynasties))"));
        Assert.assertTrue(ruleString.contains("_property(raid, of(qara_khitai_dynasties))"));
        Assert.assertTrue(ruleString.contains("_property(raid, of(jin_dynasties))"));
        Assert.assertTrue(ruleString.contains("event(1, include, invasion, invasion)"));
        Assert.assertTrue(ruleString.contains("event(1, include, invasion, raid)"));
        Assert.assertTrue(ruleString.contains("event(1, include, invasion, raid_of_dynasty)"));
        Assert.assertTrue(ruleString.contains("event(1, include, mongol_invasion, invasion)"));
        Assert.assertTrue(ruleString.contains("event(1, include, mongol_invasion, raid)"));
        Assert.assertTrue(ruleString.contains("event(1, include, mongol_invasion, raid_of_dynasty)"));
    }

    @Test
    // The Mongol invasion campaigns were often accompanied by wholesale massacres of the civilian populations especially
    // in the Khwarezmian and Xia controlled lands.
    void TestSentenceFour() {
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

        Assert.assertEquals(10, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(accompany, often)"));
        Assert.assertTrue(ruleString.contains("_mod(campaign, mongol)"));
        Assert.assertTrue(ruleString.contains("_mod(massacre, wholesale)"));
        Assert.assertTrue(ruleString.contains("_mod(population, civilian)"));
        Assert.assertTrue(ruleString.contains("_property(accompany, by(massacre))"));
        Assert.assertTrue(ruleString.contains("_property(accompany, in(land))"));
        Assert.assertTrue(ruleString.contains("_property(accompany, in(khwarezmian_land))"));
        Assert.assertTrue(ruleString.contains("_property(accompany, in(xia_land))"));
        Assert.assertTrue(ruleString.contains("_property(massacre, of(population))"));
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
        Assert.assertTrue(ruleString.contains("_mod(portion, substantial)"));
        Assert.assertTrue(ruleString.contains("_possess(genghis_khan, life)"));
        Assert.assertTrue(ruleString.contains("_property(end, of(life))"));
        Assert.assertTrue(ruleString.contains("_property(occupy, by(end))"));
        Assert.assertTrue(ruleString.contains("_property(portion, of(central_asia))"));
        Assert.assertTrue(ruleString.contains("_property(portion, of(china))"));
        Assert.assertTrue(ruleString.contains("event(1, occupy, mongol_empire, portion)"));
        Assert.assertTrue(ruleString.contains("event(1, occupy, mongol_empire, portion_of_central_asia)"));
        Assert.assertTrue(ruleString.contains("event(1, occupy, mongol_empire, portion_of_china)"));
        Assert.assertTrue(ruleString.contains("event(1, occupy, mongol_empire, substantial_portion)"));
    }
}