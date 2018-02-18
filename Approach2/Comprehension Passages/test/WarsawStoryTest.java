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
    // Sentence : One of the most famous people born in Warsaw was Maria Skłodowska-Curie,
    // who achieved international recognition for her research on radioactivity and was the first
    // female recipient of the Nobel Prize
    void TestSentenceOne() {
        String content = "One of the most famous people born in Warsaw, was Maria_Skłodowska_Curie, " +
        "who achieved international recognition for Maria_Curie research on radioactivity and was the first " +
        "female recipient of the Nobel Prize";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            System.out.println(rule.toString());
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(people, famous)"));
        Assert.assertTrue(ruleString.contains("_mod(recognition, international)"));
        Assert.assertTrue(ruleString.contains("_property(1, bear, null, warsaw)"));
        Assert.assertTrue(ruleString.contains("event(3, achieve, maria_skłodowska_curie, research)"));
        Assert.assertTrue(ruleString.contains("event(3, achieve, maria_skłodowska_curie, radioactivity)"));
        Assert.assertTrue(ruleString.contains("event(3, achieve, maria_skłodowska_curie, recognition)"));
        Assert.assertTrue(ruleString.contains("event(3, achieve, maria_skłodowska_curie, international_recognition)"));
        Assert.assertTrue(ruleString.contains("_is(One, Maria_Skłodowska_Curie)"));
    }

    @Test
    // Sentence : "Famous musicians include Władysław Szpilman and Frédéric Chopin.
    void TestSentenceTwo() {
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
    void TestSentenceThree() {
        String content = "Though Chopin was born in the village of Żelazowa_Wola, about 60 km from Warsaw, " +
        "Chopin moved to the city with Chopin family, when Chopin was seven_months_old.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(0, ruleString.size());
        Assert.assertTrue(ruleString.contains("_abbreviation(afc, american_football_conference)"));
        Assert.assertTrue(ruleString.contains("_abbreviation(nfc, national_football_conference)"));
        Assert.assertTrue(ruleString.contains("event(1, defeat, denver_broncos, carolina_panthers)"));
        Assert.assertTrue(ruleString.contains("event(2, earn, afc, title)"));
        Assert.assertTrue(ruleString.contains("event(2, earn, afc, third_super_bowl_title)"));
        Assert.assertTrue(ruleString.contains("_adj(title, third)"));
        Assert.assertTrue(ruleString.contains("_adj(title, super_bowl)"));
    }

    @Test
    // Sentence : "Casimir Pulaski, a Polish general and hero of the American Revolutionary War, was born here in 1745"
    void TestSentenceFour() {
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
