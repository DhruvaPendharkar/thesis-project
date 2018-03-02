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
public class JacksonvilleFloridaStoryTest {
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
    // Jacksonville is the largest city by population in the United State's state of Florida, and the largest city by
    // area in the contiguous United_States.
    void TestSentenceOne() {
        String content = "Jacksonville is the largest city by population in the United_State's state of Florida, and the " +
        "largest city by area in the contiguous United_States.";
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

        Assert.assertEquals(11, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(jacksonville, city)"));
        Assert.assertTrue(ruleString.contains("_is(jacksonville, largest_city)"));
        Assert.assertTrue(ruleString.contains("_mod(city, largest)"));
        Assert.assertTrue(ruleString.contains("_possess(united_state, state)"));
        Assert.assertTrue(ruleString.contains("_property(city, by(area))"));
        Assert.assertTrue(ruleString.contains("_property(city, by(population))"));
        Assert.assertTrue(ruleString.contains("_property(population, in(city))"));
        Assert.assertTrue(ruleString.contains("_property(population, in(state))"));
        Assert.assertTrue(ruleString.contains("_property(population, in(united_states))"));
        Assert.assertTrue(ruleString.contains("_property(state, of(florida))"));
        Assert.assertTrue(ruleString.contains("city(jacksonville)"));
    }

    @Test
    // Jacksonville is the county seat of Duval_County, with which the city government consolidated in 1968.
    void TestSentenceTwo() {
        String content = "Jacksonville is the county_seat of Duval_County, with which the city's government consolidated " +
        "in 1968.";
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

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(jacksonville, county_seat)"));
        Assert.assertTrue(ruleString.contains("_possess(city, government)"));
        Assert.assertTrue(ruleString.contains("_property(consolidated, in(1968))"));
        Assert.assertTrue(ruleString.contains("_property(county_seat, of(duval_county))"));
        Assert.assertTrue(ruleString.contains("county_seat(jacksonville)"));
        Assert.assertTrue(ruleString.contains("time(1968)"));
    }

    @Test
    // Consolidation gave Jacksonville Jacksonville's great size and placed most of Jacksonville's metropolitan
    // population within the city limits, with an estimated population of 853,382 in 2014.
    void TestSentenceThree() {
        String content = "Consolidation gave Jacksonville Jacksonville's great size and placed most of Jacksonville's " +
        "metropolitan population within the city limits, with an estimated population of 853,382 in 2014.";
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
        Assert.assertTrue(ruleString.contains("_mod(jacksonville, jacksonville)"));
        Assert.assertTrue(ruleString.contains("_mod(population, estimated)"));
        Assert.assertTrue(ruleString.contains("_mod(population, metropolitan)"));
        Assert.assertTrue(ruleString.contains("_mod(size, great)"));
        Assert.assertTrue(ruleString.contains("_possess(jacksonville, population)"));
        Assert.assertTrue(ruleString.contains("_possess(jacksonville, size)"));
        Assert.assertTrue(ruleString.contains("_property(most, of(population))"));
        Assert.assertTrue(ruleString.contains("_property(population, in(2014))"));
        Assert.assertTrue(ruleString.contains("_property(population, of(853,382))"));
        Assert.assertTrue(ruleString.contains("_property(population, within(limit))"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _conj)"));
        Assert.assertTrue(ruleString.contains("event(1, give, consolidation, great_size)"));
        Assert.assertTrue(ruleString.contains("event(1, give, consolidation, size)"));
        Assert.assertTrue(ruleString.contains("event(2, place, consolidation, most)"));
        Assert.assertTrue(ruleString.contains("event(2, place, consolidation, most_of_population)"));
        Assert.assertTrue(ruleString.contains("time(2014)"));
    }

    @Test
    // Jacksonville is the most populous city proper in Florida and the Southeast, and the 12th most populous in the
    // United_States.
    void TestSentenceFour() {
        String content = "Jacksonville is the most populous city proper in Florida and the Southeast, and the 12th most " +
        "populous in the United_States.";
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
        Assert.assertTrue(ruleString.contains("_is(jacksonville, '12th')"));
        Assert.assertTrue(ruleString.contains("_is(jacksonville, 'populous_12th')"));
        Assert.assertTrue(ruleString.contains("_is(jacksonville, city)"));
        Assert.assertTrue(ruleString.contains("_is(jacksonville, populous_proper_city)"));
        Assert.assertTrue(ruleString.contains("_mod(city, populous)"));
        Assert.assertTrue(ruleString.contains("_mod(city, proper)"));
        Assert.assertTrue(ruleString.contains("_property('12th', in(united_states))"));
        Assert.assertTrue(ruleString.contains("_property(proper, in(florida))"));
        Assert.assertTrue(ruleString.contains("_property(proper, in(southeast))"));
        Assert.assertTrue(ruleString.contains("city(jacksonville)"));
    }

    @Test
    // Jacksonville is the principal city in the Jacksonville metropolitan area, with a population of 1,345,596 in 2010.
    void TestSentenceFive() {
        String content = "Jacksonville is the principal city in the Jacksonville's metropolitan area, with a population of " +
        "1,345,596 in 2010.";
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
        Assert.assertTrue(ruleString.contains("_is(jacksonville, city)"));
        Assert.assertTrue(ruleString.contains("_is(jacksonville, principal_city)"));
        Assert.assertTrue(ruleString.contains("_mod(area, metropolitan)"));
        Assert.assertTrue(ruleString.contains("_mod(city, principal)"));
        Assert.assertTrue(ruleString.contains("_possess(jacksonville, area)"));
        Assert.assertTrue(ruleString.contains("_property(city, in(area))"));
        Assert.assertTrue(ruleString.contains("_property(population, of(1,345,596))"));
        Assert.assertTrue(ruleString.contains("city(jacksonville)"));
        Assert.assertTrue(ruleString.contains("time(2010)"));
    }
}