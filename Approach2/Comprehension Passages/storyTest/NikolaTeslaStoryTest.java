import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;

/**
 * Created by dhruv on 2/19/2018.
 */
public class NikolaTeslaStoryTest {
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
    // Nikola Tesla (10 July 1856 – 7 January 1943) was a Serbian American inventor, electrical engineer, mechanical
    // engineer, physicist, and futurist best known for his contributions to the design of the modern alternating
    // current (AC) electricity supply system.
    void TestSentenceOne() {
        String content = "Nikola_Tesla (10 July 1856 – 7 January 1943) was a serbian-american " +
        "inventor, electrical engineer, mechanical engineer, physicist, and futurist best known for Nikola_Tesla's " +
        "contributions to the design of the modern alternating_current (AC) electricity supply system.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(33, ruleString.size());
        Assert.assertTrue(ruleString.contains("time('10_july_1856')"));
        Assert.assertTrue(ruleString.contains("time('7_january_1943')"));
        Assert.assertTrue(ruleString.contains("day('10_july_1856', 10)"));
        Assert.assertTrue(ruleString.contains("month('10_july_1856', july)"));
        Assert.assertTrue(ruleString.contains("year('10_july_1856', 1856)"));
        Assert.assertTrue(ruleString.contains("day('7_january_1943', 7)"));
        Assert.assertTrue(ruleString.contains("month('7_january_1943', january)"));
        Assert.assertTrue(ruleString.contains("year('7_january_1943', 1943)"));
        Assert.assertTrue(ruleString.contains("_start_date(nikola_tesla, '10_july_1856')"));
        Assert.assertTrue(ruleString.contains("_end_date(nikola_tesla, '7_january_1943')"));
        Assert.assertTrue(ruleString.contains("_abbreviation(ac, alternating_current)"));
        Assert.assertTrue(ruleString.contains("_mod(inventor, serbian_american)"));
        Assert.assertTrue(ruleString.contains("_is(nikola_tesla, inventor)"));
        Assert.assertTrue(ruleString.contains("_is(nikola_tesla, serbian_american_inventor)"));
        Assert.assertTrue(ruleString.contains("_is(nikola_tesla, engineer)"));
        Assert.assertTrue(ruleString.contains("_is(nikola_tesla, electrical_engineer)"));
        Assert.assertTrue(ruleString.contains("_is(nikola_tesla, engineer)"));
        Assert.assertTrue(ruleString.contains("_is(nikola_tesla, mechanical_engineer)"));
        Assert.assertTrue(ruleString.contains("_is(nikola_tesla, physicist)"));
        Assert.assertTrue(ruleString.contains("_is(nikola_tesla, futurist)"));
        Assert.assertTrue(ruleString.contains("inventor(nikola_tesla)"));
        Assert.assertTrue(ruleString.contains("engineer(nikola_tesla)"));
        Assert.assertTrue(ruleString.contains("physicist(nikola_tesla)"));
        Assert.assertTrue(ruleString.contains("futurist(nikola_tesla)"));
        Assert.assertTrue(ruleString.contains("_mod(engineer, electrical)"));
        Assert.assertTrue(ruleString.contains("_mod(engineer, mechanical)"));
        Assert.assertTrue(ruleString.contains("_mod(know, best)"));
        Assert.assertTrue(ruleString.contains("_property(know, for, contribution)"));
        Assert.assertTrue(ruleString.contains("_property(know, to, design)"));
        Assert.assertTrue(ruleString.contains("_possess(nikola_tesla, contribution)"));
        Assert.assertTrue(ruleString.contains("_property(design, of, system)"));
        Assert.assertTrue(ruleString.contains("_mod(system, modern)"));
        Assert.assertTrue(ruleString.contains("_mod(system, alternating_current)"));
        Assert.assertTrue(ruleString.contains("event(2, know, null, null)"));
    }
}