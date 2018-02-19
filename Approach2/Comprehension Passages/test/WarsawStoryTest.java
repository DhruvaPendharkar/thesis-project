import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;

/**
 * Created by dhruv on 2/14/2018.
 */
public class WarsawStoryTest {
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
    // Sentence : Maria_Skłodowska_Curie was one_of_the_most_famous people born in Warsaw
    void TestSentenceOne() {
        String content = "Maria_Skłodowska_Curie was born in Warsaw";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            System.out.println(rule.toString());
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(2, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(2, bear, null, maria_skłodowska_curie)"));
        Assert.assertTrue(ruleString.contains("_property(bear, in(warsaw))"));
    }

    @Test
    // Sentence : "Maria_Curie achieved international recognition for Maria_Curie research on radioactivity
    // and was the first female recipient of the Nobel Prize
    void TestSentenceTwo() {
        String content = "Maria_Curie achieved international recognition for Maria_Curie research on radioactivity " +
        "and was the first female recipient of the Nobel Prize";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(11, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(recognition, international)"));
        Assert.assertTrue(ruleString.contains("_mod(research, maria_curie)"));
        Assert.assertTrue(ruleString.contains("_mod(prize, nobel)"));
        Assert.assertTrue(ruleString.contains("_is(maria_curie, recipient)"));
        Assert.assertTrue(ruleString.contains("_is(maria_curie, first_female_recipient)"));
        Assert.assertTrue(ruleString.contains("_property(recipient, of(prize))"));
        Assert.assertTrue(ruleString.contains("_property(achieve, for(research))"));
        Assert.assertTrue(ruleString.contains("_property(achieve, on(radioactivity))"));
        Assert.assertTrue(ruleString.contains("_relation(1, recipient, _conj)"));
        Assert.assertTrue(ruleString.contains("event(1, achieve, maria_curie, recognition)"));
        Assert.assertTrue(ruleString.contains("event(1, achieve, maria_curie, international_recognition)"));
    }

    @Test
    // Sentence : "Famous musicians include Władysław Szpilman and Frédéric Chopin.
    void TestSentenceThree() {
        String content = "The famous musicians include Władysław_Szpilman and Frédéric_Chopin";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(5, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(musician, famous)"));
        Assert.assertTrue(ruleString.contains("event(1, include, musician, władysław_szpilman)"));
        Assert.assertTrue(ruleString.contains("event(1, include, musician, frédéric_chopin)"));
        Assert.assertTrue(ruleString.contains("event(1, include, famous_musician, władysław_szpilman)"));
        Assert.assertTrue(ruleString.contains("event(1, include, famous_musician, frédéric_chopin)"));
    }

    @Test
    // Sentence : "Though Chopin was born in the village of Żelazowa Wola, about 60 km (37 mi) from Warsaw,
    // he moved to the city with his family when he was seven months old.
    void TestSentenceFour() {
        String content = "Though Chopin was born in the village of Żelazowa_Wola about 60_km from Warsaw, " +
        "Chopin moved to the city with Chopin family, when Chopin was seven_months_old.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(2, bear, null, chopin)"));
        Assert.assertTrue(ruleString.contains("_property(bear, in(village))"));
        Assert.assertTrue(ruleString.contains("_property(bear, about(60_km))"));
        Assert.assertTrue(ruleString.contains("_property(village, of(żelazowa_wola))"));
        Assert.assertTrue(ruleString.contains("_property(60_km, from(chopin))"));
        Assert.assertTrue(ruleString.contains("_property(move, to(city))"));
        Assert.assertTrue(ruleString.contains("_property(city, with(family))"));
    }

    @Test
    // Sentence : "Casimir Pulaski, a Polish general and hero of the American Revolutionary War, was born here in 1745"
    void TestSentenceFive() {
        String content = "Casimir_Pulaski, a Polish general and hero of the American_Revolutionary_War, was born in Warsaw in 1745";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("time(1745)"));
        Assert.assertTrue(ruleString.contains("_property(hero, of(american_revolutionary_war))"));
        Assert.assertTrue(ruleString.contains("_property(bear, in(warsaw))"));
        Assert.assertTrue(ruleString.contains("_property(warsaw, in(1745))"));
        Assert.assertTrue(ruleString.contains("event(2, bear, null, hero)"));
        Assert.assertTrue(ruleString.contains("event(2, bear, null, casimir_pulaski)"));
    }
}
