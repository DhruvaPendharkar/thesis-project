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
        String content = "Super_Bowl_50 was to determine the champion of the National Football League (NFL) for the 2015 season";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nfl)"));
        Assert.assertTrue(ruleString.contains("time(2015)"));
        Assert.assertTrue(ruleString.contains("organization(national_football_league)"));
        Assert.assertTrue(ruleString.contains("_abbreviation(nfl, national_football_league)"));
        Assert.assertTrue(ruleString.contains("event(1, be, super_bowl_50, null)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(2, determine, super_bowl_50, champion)"));
        Assert.assertTrue(ruleString.contains("event(2, determine, super_bowl_50, champion_of_national_football_league)"));
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

    @Test
        // Sentence : "The game was played on February 7 2016, at Levis_Stadium, in the San_Francisco_Bay_Area,
        // at Santa_Clara in California"
    void TestSentenceFour() {
        String content = "As Super_Bowl_50 was the 50th Super_Bowl, the league emphasized the 'golden " +
        "anniversary' with various gold-themed initiatives, as well as temporarily suspending the tradition of naming " +
        "each Super_Bowl game with Roman numerals, under which the game would have been known as Super_Bowl_L, so " +
        "that the logo could prominently feature the Arabic numerals 50.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(14, ruleString.size());
        Assert.assertTrue(ruleString.contains("_adj(super_bowl, 50th)"));
        Assert.assertTrue(ruleString.contains("_adj(anniversary, golden)"));
        Assert.assertTrue(ruleString.contains("_adj(initiative, various)"));
        Assert.assertTrue(ruleString.contains("_adj(initiative, gold_themed)"));
        Assert.assertTrue(ruleString.contains("event(2, emphasize, league, initiative)"));
        Assert.assertTrue(ruleString.contains("event(2, emphasize, league, anniversary)"));
        Assert.assertTrue(ruleString.contains("event(2, emphasize, league, golden_anniversary)"));
        Assert.assertTrue(ruleString.contains("event(3, suspend, league, tradition)"));
        Assert.assertTrue(ruleString.contains("event(4, name, null, numeral)"));
        Assert.assertTrue(ruleString.contains("event(4, name, null, game)"));
        Assert.assertTrue(ruleString.contains("event(7, know, null, game)"));
        Assert.assertTrue(ruleString.contains("event(7, know, null, numeral)"));
        Assert.assertTrue(ruleString.contains("event(7, know, null, super_bowl_l)"));
        Assert.assertTrue(ruleString.contains("event(8, feature, logo, arabic_50)"));
    }

    @Test
        // Sentence : "The game was played on February 7 2016, at Levis_Stadium, in the San_Francisco_Bay_Area,
        // at Santa_Clara in California"
    void TestSentenceFive() {
        String content = "The game was played on February 7 2016, at Levis_Stadium, in the San_Francisco_" +
                "Bay_Area, at Santa_Clara in California";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(5, ruleString.size());
        Assert.assertTrue(ruleString.contains("time(february_7_2016)"));
        Assert.assertTrue(ruleString.contains("event(2, play, null, game)"));
        Assert.assertTrue(ruleString.contains("event(2, play, null, february_7_2016)"));
        Assert.assertTrue(ruleString.contains("event(2, play, null, san_francisco_bay_area)"));
        Assert.assertTrue(ruleString.contains("event(2, play, null, santa_clara)"));
    }
}
