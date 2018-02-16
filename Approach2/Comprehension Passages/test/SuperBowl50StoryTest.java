import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;

/**
 * Created by dhruv on 2/14/2018.
 */
public class SuperBowl50StoryTest {
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
    // Sentence : Super_Bowl_50 was an american_football game.
    void TestSentenceOne() {
        String content = "Super_Bowl_50 was an american_football game";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(3, ruleString.size());

        Assert.assertTrue(ruleString.contains("_adj(game, american_football)"));
        Assert.assertTrue(ruleString.contains("_is(Super_Bowl_50, game)"));
        Assert.assertTrue(ruleString.contains("_is(Super_Bowl_50, american_football_game)"));
    }

    @Test
    // Sentence : "Super_Bowl_50 was to determine the champion of the National_Football_League (NFL) for the 2015 season.
    void TestSentenceTwo() {
        String content = "Super_Bowl_50 was to determine the champion of the National_Football_League (NFL) for the 2015 season";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("_abbreviation(nfl, national_football_league)"));
        Assert.assertTrue(ruleString.contains("event(1, be, super_bowl_50, null)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(2, determine, super_bowl_50, champion)"));
        Assert.assertTrue(ruleString.contains("event(2, determine, super_bowl_50, champion_of_national_football_league)"));
        Assert.assertTrue(ruleString.contains("event(2, determine, super_bowl_50, season)"));
    }

    @Test
        // Sentence : "Super_Bowl_50 was to determine the champion of the National_Football_League (NFL) for the 2015 season.
    void TestSentenceThree() {
        String content = "The American_Football_Conference (AFC) champion Denver_Broncos " +
        "defeated the National_Football_Conference (NFC) champion Carolina_Panthers by 24–10 " +
        "to earn AFC third Super_Bowl title";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("_abbreviation(afc, american_football_conference)"));
        Assert.assertTrue(ruleString.contains("_abbreviation(nfc, national_football_conference)"));
        Assert.assertTrue(ruleString.contains("event(1, defeat, denver_broncos, carolina_panthers)"));
        Assert.assertTrue(ruleString.contains("event(2, earn, afc, title)"));
        Assert.assertTrue(ruleString.contains("event(2, earn, afc, third_super_bowl_title)"));
        Assert.assertTrue(ruleString.contains("_adj(title, third)"));
        Assert.assertTrue(ruleString.contains("_adj(title, super_bowl)"));
    }
}
