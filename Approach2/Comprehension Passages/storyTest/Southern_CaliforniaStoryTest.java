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
public class Southern_CaliforniaStoryTest {
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
    // Southern_California, often abbreviated as SoCal, is a geographic and cultural region that generally comprises
    // California's southernmost 10 counties.
    void TestSentenceOne() {
        String content = "Southern_California, often abbreviated as SoCal, is a geographic and cultural region that " +
        "generally comprises California's southernmost 10 counties.";
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

        Assert.assertEquals(16, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(abbreviate, often)"));
        Assert.assertTrue(ruleString.contains("_mod(comprise, generally)"));
        Assert.assertTrue(ruleString.contains("_mod(county, 10)"));
        Assert.assertTrue(ruleString.contains("_mod(county, southernmost)"));
        Assert.assertTrue(ruleString.contains("_mod(region, cultural)"));
        Assert.assertTrue(ruleString.contains("_mod(region, geographic)"));
        Assert.assertTrue(ruleString.contains("_possess(california, county)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, abbreviate, southern_california, null)"));
        Assert.assertTrue(ruleString.contains("event(2, be, geographic_cultural_region, null)"));
        Assert.assertTrue(ruleString.contains("event(2, be, region, null)"));
        Assert.assertTrue(ruleString.contains("event(3, comprise, geographic_cultural_region, county)"));
        Assert.assertTrue(ruleString.contains("event(3, comprise, geographic_cultural_region, southernmost_county)"));
        Assert.assertTrue(ruleString.contains("event(3, comprise, region, county)"));
        Assert.assertTrue(ruleString.contains("event(3, comprise, region, southernmost_county)"));
        Assert.assertTrue(ruleString.contains("number(10)"));
    }

    @Test
    // Southern_California is, traditionally described as "eight_counties", based on demographics and economic ties.
    void TestSentenceTwo_Failed() {
        String content = "Southern_California is, traditionally described as \"eight_counties\", based on demographics " +
        "and economic ties.";
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
    // The eight counties are Imperial, Los_Angeles, Orange, Riverside, San_Bernardino, San_Diego, Santa_Barbara,
    // and Ventura.
    void TestSentenceThree_Failed() {
        String content = "The eight counties are Imperial, Los_Angeles, Orange, Riverside, San_Bernardino, San_Diego, " +
        "Santa_Barbara, and Ventura.";
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
    // The more extensive 10-county definition, including Kern and San_Luis_Obispo counties, is also used based on
    // historical political divisions.
    void TestSentenceFour_Failed() {
        String content = "The more extensive 10-county definition, including Kern and San_Luis_Obispo counties, " +
        "is also used based on historical political divisions.";
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
    // Southern_California is a major economic center for the state of California and the United_States.
    void TestSentenceFive() {
        String content = "Southern_California is a major economic center for the state_of_California and the " +
        "United_States.";
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
        Assert.assertTrue(ruleString.contains("_is(southern_california, center)"));
        Assert.assertTrue(ruleString.contains("_is(southern_california, major_economic_center)"));
        Assert.assertTrue(ruleString.contains("_mod(center, economic)"));
        Assert.assertTrue(ruleString.contains("_mod(center, major)"));
        Assert.assertTrue(ruleString.contains("_property(center, for, state_of_california)"));
        Assert.assertTrue(ruleString.contains("_property(center, for, united_states)"));
        Assert.assertTrue(ruleString.contains("center(southern_california)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
    }
}