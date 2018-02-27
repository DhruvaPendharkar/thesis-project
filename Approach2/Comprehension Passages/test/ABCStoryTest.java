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
public class ABCStoryTest {
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
    // The American Broadcasting Company (ABC) (stylized in its logo as abc since 1957) is an American commercial
    // broadcast television network that is owned by the Disney–ABC Television Group, a subsidiary of Disney Media
    // Networks division of The Walt Disney Company.
    void TestSentenceOne() {
        String content = "The American Broadcasting Company (ABC), stylized in the network's logo as abc since 1957, is an " +
        "American commercial broadcast television network that is owned by the Disney_ABC_Television_Group, a subsidiary " +
        "of Disney_Media_Networks division of The_Walt_Disney_Company.";
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

        Assert.assertTrue(21 <= ruleString.size());
        Assert.assertTrue(ruleString.contains("_abbreviation(abc, american_broadcasting_company)"));
        Assert.assertTrue(ruleString.contains("_is(american_broadcasting_company, american_commercial_network)"));
        Assert.assertTrue(ruleString.contains("_is(american_broadcasting_company, network)"));
        Assert.assertTrue(ruleString.contains("_is(disney_abc_television_group, subsidiary)"));
        Assert.assertTrue(ruleString.contains("_mod(division, disney_media_networks)"));
        Assert.assertTrue(ruleString.contains("_mod(network, american)"));
        Assert.assertTrue(ruleString.contains("_mod(network, commercial)"));
        Assert.assertTrue(ruleString.contains("_possess(network, logo)"));
        Assert.assertTrue(ruleString.contains("_property(division, of(the_walt_disney_company))"));
        Assert.assertTrue(ruleString.contains("_property(logo, as(abc))"));
        Assert.assertTrue(ruleString.contains("_property(own, by(disney_abc_television_group))"));
        Assert.assertTrue(ruleString.contains("_property(stylize, in(logo))"));
        Assert.assertTrue(ruleString.contains("_property(stylize, since(1957))"));
        Assert.assertTrue(ruleString.contains("_property(subsidiary, of(division))"));
        Assert.assertTrue(ruleString.contains("_relation(american_broadcasting_company, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, stylize, null, null)"));
        Assert.assertTrue(ruleString.contains("event(4, own, null, network)"));
        Assert.assertTrue(ruleString.contains("network(american_broadcasting_company)"));
        Assert.assertTrue(ruleString.contains("organization(american_broadcasting_company)"));
        Assert.assertTrue(ruleString.contains("subsidiary(disney_abc_television_group)"));
        Assert.assertTrue(ruleString.contains("time(1957)"));
    }

    @Test
    // The network is part of the Big Three television networks.
    void TestSentenceTwo() {
        String content = "The ABC network is part of The_Big_Three television networks.";
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

        Assert.assertEquals(5, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(network, part)"));
        Assert.assertTrue(ruleString.contains("_mod(network, the_big_three)"));
        Assert.assertTrue(ruleString.contains("_property(part, of(network))"));
        Assert.assertTrue(ruleString.contains("organization(abc)"));
        Assert.assertTrue(ruleString.contains("part(network)"));
    }

    @Test
    // The network is headquartered on Columbus Avenue and West 66th Street in Manhattan, with additional major offices
    // and production facilities in New York City, Los Angeles and Burbank, California.
    void TestSentenceThree() {
        String content = "The network is headquartered on Columbus_Avenue and West_66th_Street in Manhattan, with " +
        "additional major offices and production facilities in New_York_City, Los_Angeles and Burbank in California.";
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

        Assert.assertEquals(12, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(office, additional)"));
        Assert.assertTrue(ruleString.contains("_mod(office, major)"));
        Assert.assertTrue(ruleString.contains("_property(columbus_avenue, in(manhattan))"));
        Assert.assertTrue(ruleString.contains("_property(columbus_avenue, with(office))"));
        Assert.assertTrue(ruleString.contains("_property(facility, in(burbank))"));
        Assert.assertTrue(ruleString.contains("_property(facility, in(los_angeles))"));
        Assert.assertTrue(ruleString.contains("_property(facility, in(new_york_city))"));
        Assert.assertTrue(ruleString.contains("_property(headquarter, in(california))"));
        Assert.assertTrue(ruleString.contains("_property(headquarter, on('west_66th_street'))"));
        Assert.assertTrue(ruleString.contains("_property(headquarter, on(columbus_avenue))"));
        Assert.assertTrue(ruleString.contains("_property(headquarter, on(facility))"));
        Assert.assertTrue(ruleString.contains("event(2, headquarter, null, network)"));
    }
}