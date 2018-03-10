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
        Assert.assertTrue(ruleString.contains("_property(2, give, in, century)"));
        Assert.assertTrue(ruleString.contains("_property(2, give, to, normandy)"));
        Assert.assertTrue(ruleString.contains("_property(region, in, france)"));
        Assert.assertTrue(ruleString.contains("_possess(norman, name)"));
        Assert.assertTrue(ruleString.contains("people(norman)"));
        Assert.assertTrue(ruleString.contains("region(normandy)"));
        Assert.assertTrue(ruleString.contains("event(2, give, people, name)"));
    }

    @Test
    // Normans were descended from the Norse raiders and pirates from Denmark, Iceland and Norway who,
    // under Normans leader Rollo, agreed to swear fealty to King_Charles_III of West_Francia.
    void TestSentenceTwo() {
        String content = "Normans descended from the Norse raiders and pirates from Denmark_Iceland " +
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

        Assert.assertEquals(18, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(leader, rollo)"));
        Assert.assertTrue(ruleString.contains("_mod(raider, norse)"));
        Assert.assertTrue(ruleString.contains("_mod(swear, fealty)"));
        Assert.assertTrue(ruleString.contains("_possess(norman, leader)"));
        Assert.assertTrue(ruleString.contains("_possess(norman, rollo)"));
        Assert.assertTrue(ruleString.contains("_property(1, descend, from, denmark_iceland)"));
        Assert.assertTrue(ruleString.contains("_property(1, descend, from, raider)"));
        Assert.assertTrue(ruleString.contains("_property(1, descend, from, norway)"));
        Assert.assertTrue(ruleString.contains("_property(1, descend, from, pirate)"));
        Assert.assertTrue(ruleString.contains("_property(1, descend, under, leader)"));
        Assert.assertTrue(ruleString.contains("_property(king_charles_iii, of, west_francia)"));
        Assert.assertTrue(ruleString.contains("_property(3, swear, to, king_charles_iii)"));
        Assert.assertTrue(ruleString.contains("_relation(2, 3, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_relation(leader, 2, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, descend, norman, null)"));
        Assert.assertTrue(ruleString.contains("event(2, agree, null, null)"));
        Assert.assertTrue(ruleString.contains("event(3, swear, null, null)"));
        Assert.assertTrue(ruleString.contains("leader(rollo)"));
    }

    @Test
    // Through generations of assimilation and mixing with the native Frankish and Roman-Gaulish populations,
    // Normans's descendants would gradually merge with the Carolingian_based cultures of West_Francia.
    void TestSentenceThree() {
        String content = "Normans's descendants, through generations of assimilating and mixing with the native " +
        "Frankish_and_Roman-Gaulish populations, would gradually merge with the Carolingian_based cultures of " +
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

        Assert.assertEquals(15, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(culture, carolingian_based)"));
        Assert.assertTrue(ruleString.contains("_mod(merge, gradually)"));
        Assert.assertTrue(ruleString.contains("_mod(population, frankish_and_roman_gaulish)"));
        Assert.assertTrue(ruleString.contains("_mod(population, native)"));
        Assert.assertTrue(ruleString.contains("_possess(norman, descendant)"));
        Assert.assertTrue(ruleString.contains("_property(1, assimilate, with, population)"));
        Assert.assertTrue(ruleString.contains("_property(culture, of, west_francia)"));
        Assert.assertTrue(ruleString.contains("_property(descendant, through, generation)"));
        Assert.assertTrue(ruleString.contains("_property(3, merge, with, culture)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(generation, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(generation, 2, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, assimilate, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, mix, null, null)"));
        Assert.assertTrue(ruleString.contains("event(3, merge, descendant, null)"));
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

        Assert.assertEquals(18, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(century, succeeding)"));
        Assert.assertTrue(ruleString.contains("_mod(emerge, initially)"));
        Assert.assertTrue(ruleString.contains("_mod(identity, cultural)"));
        Assert.assertTrue(ruleString.contains("_mod(identity, distinct)"));
        Assert.assertTrue(ruleString.contains("_mod(identity, ethnic)"));
        Assert.assertTrue(ruleString.contains("_property(1, emerge, in, 'the_first_half_of_the_10th_century')"));
        Assert.assertTrue(ruleString.contains("_property(identity, of, norman)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(2, 3, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(1, emerge, distinct_cultural_ethnic_identity, null)"));
        Assert.assertTrue(ruleString.contains("event(1, emerge, identity, null)"));
        Assert.assertTrue(ruleString.contains("event(2, continue, cultural_ethnic_identity, null)"));
        Assert.assertTrue(ruleString.contains("event(2, continue, identity, null)"));
        Assert.assertTrue(ruleString.contains("event(3, evolve, cultural_ethnic_identity, century)"));
        Assert.assertTrue(ruleString.contains("event(3, evolve, cultural_ethnic_identity, succeeding_century)"));
        Assert.assertTrue(ruleString.contains("event(3, evolve, identity, century)"));
        Assert.assertTrue(ruleString.contains("event(3, evolve, identity, succeeding_century)"));
        Assert.assertTrue(ruleString.contains("time('the_first_half_of_the_10th_century')"));
    }
}
