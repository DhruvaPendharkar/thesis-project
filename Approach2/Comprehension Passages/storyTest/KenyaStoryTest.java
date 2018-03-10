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
public class KenyaStoryTest {
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
    // Kenya, officially the Republic_of_Kenya, is a country located in Africa and a founding member of the
    // East_African_Community (EAC).
    void TestSentenceOne() {
        String content = "Kenya, officially the Republic_of_Kenya, is a country in Africa and a founding member " +
        "of the East_African_Community (EAC).";
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
        Assert.assertTrue(ruleString.contains("_abbreviation(eac, east_african_community)"));
        Assert.assertTrue(ruleString.contains("_is(kenya, country)"));
        Assert.assertTrue(ruleString.contains("_is(kenya, founding_member)"));
        Assert.assertTrue(ruleString.contains("_is(kenya, member)"));
        Assert.assertTrue(ruleString.contains("_mod(member, founding)"));
        Assert.assertTrue(ruleString.contains("_property(country, in, africa)"));
        Assert.assertTrue(ruleString.contains("_property(member, of, east_african_community)"));
        Assert.assertTrue(ruleString.contains("country(kenya)"));
        Assert.assertTrue(ruleString.contains("member(kenya)"));
    }

    @Test
    // Kenya's capital and largest city is Nairobi.
    void TestSentenceTwo() {
        String content = "Kenya's capital and largest city is Nairobi.";
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

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(capital, nairobi)"));
        Assert.assertTrue(ruleString.contains("_is(city, nairobi)"));
        Assert.assertTrue(ruleString.contains("_is(largest_city, nairobi)"));
        Assert.assertTrue(ruleString.contains("_mod(city, largest)"));
        Assert.assertTrue(ruleString.contains("_possess(kenya, capital)"));
        Assert.assertTrue(ruleString.contains("capital(nairobi)"));
        Assert.assertTrue(ruleString.contains("city(nairobi)"));
    }

    @Test
    // Kenya's territory lies on the equator and overlies the East_African_Rift covering a diverse and expansive
    // terrain that extends roughly from Lake_Victoria to Lake_Turkana, which was formerly called as Lake_Rudolf, and
    // further south-east to the Indian_Ocean.
    void TestSentenceThree() {
        String content = "Kenya's territory lies on the equator and overlies the East_African_Rift covering a diverse " +
        "and expansive terrain that extends roughly from Lake_Victoria to Lake_Turkana, which was formerly called as " +
        "Lake_Rudolf, and further south-east to the Indian_Ocean.";
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
        Assert.assertTrue(ruleString.contains("_mod(extend, roughly)"));
        Assert.assertTrue(ruleString.contains("_mod(terrain, diverse)"));
        Assert.assertTrue(ruleString.contains("_mod(terrain, expansive)"));
        Assert.assertTrue(ruleString.contains("_possess(kenya, territory)"));
        Assert.assertTrue(ruleString.contains("_property(4, extend, from, lake_victoria)"));
        Assert.assertTrue(ruleString.contains("_property(lake_victoria, to, lake_turkana)"));
        Assert.assertTrue(ruleString.contains("_property(1, lie, on, equator)"));
        Assert.assertTrue(ruleString.contains("_property(south_east, to, indian_ocean)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(east_african_rift, 3, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, lie, territory, null)"));
        Assert.assertTrue(ruleString.contains("event(2, overlie, territory, east_african_rift)"));
        Assert.assertTrue(ruleString.contains("event(3, cover, null, diverse_expansive_terrain)"));
        Assert.assertTrue(ruleString.contains("event(3, cover, null, terrain)"));
        Assert.assertTrue(ruleString.contains("event(4, extend, diverse_expansive_terrain, null)"));
        Assert.assertTrue(ruleString.contains("event(4, extend, terrain, null)"));
    }

    @Test
    // Kenya is bordered by Tanzania to the south, Uganda to the west, South_Sudan to the north-west, Ethiopia to the
    // north and Somalia to the north-east.
    void TestSentenceFour() {
        String content = "Kenya is bordered by Tanzania to the south, Uganda to the west, South_Sudan to the north-west, " +
        "Ethiopia to the north, and Somalia to the north-east.";
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
    // Kenya covers 581,309 square_kilometre, and had a population of approximately 45 million people in July 2014.
    void TestSentenceFive() {
        String content = "Kenya covers 581,309 square_kilometre, and had a population of approximately 45 million people " +
        "in July 2014.";
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
        Assert.assertTrue(ruleString.contains("_mod(people, million)"));
        Assert.assertTrue(ruleString.contains("_mod(square_kilometre, '581,309')"));
        Assert.assertTrue(ruleString.contains("_property(2, have, in, 'july_2014')"));
        Assert.assertTrue(ruleString.contains("_property(population, of, million_people)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _conj)"));
        Assert.assertTrue(ruleString.contains("event(1, cover, kenya, square_kilometre)"));
        Assert.assertTrue(ruleString.contains("event(2, have, kenya, population)"));
        Assert.assertTrue(ruleString.contains("event(2, have, kenya, population_of_people)"));
        Assert.assertTrue(ruleString.contains("month('july_2014', july)"));
        Assert.assertTrue(ruleString.contains("number('581,309')"));
        Assert.assertTrue(ruleString.contains("number(45)"));
        Assert.assertTrue(ruleString.contains("number(million)"));
        Assert.assertTrue(ruleString.contains("time('july_2014')"));
        Assert.assertTrue(ruleString.contains("year('july_2014', 2014)"));
    }
}