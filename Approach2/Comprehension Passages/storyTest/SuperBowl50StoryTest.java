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

        Assert.assertEquals(5, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(game, american_football)"));
        Assert.assertTrue(ruleString.contains("game('super_bowl_50')"));
        Assert.assertTrue(ruleString.contains("_is('super_bowl_50', game)"));
        Assert.assertTrue(ruleString.contains("_is('super_bowl_50', american_football_game)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
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

        Assert.assertEquals(12, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nfl)"));
        Assert.assertTrue(ruleString.contains("organization(national_football_league)"));
        Assert.assertTrue(ruleString.contains("time(2015)"));
        Assert.assertTrue(ruleString.contains("_abbreviation(nfl, national_football_league)"));
        Assert.assertTrue(ruleString.contains("_mod(season, 2015)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_property(champion, of, national_football_league)"));
        Assert.assertTrue(ruleString.contains("_property(national_football_league, for, '2015_season')"));
        Assert.assertTrue(ruleString.contains("event(1, be, 'super_bowl_50', null)"));
        Assert.assertTrue(ruleString.contains("event(2, determine, 'super_bowl_50', champion)"));
        Assert.assertTrue(ruleString.contains("event(2, determine, 'super_bowl_50', champion_of_national_football_league)"));
        Assert.assertTrue(ruleString.contains("year(2015, 2015)"));
    }

    @Test
    // Sentence : "Super_Bowl_50 was to determine the champion of the National_Football_League (NFL) for the 2015 season.
    void TestSentenceThree() {
        String content = "The American_Football_Conference's (AFC) champion team, Denver_Broncos, " +
        "defeated the National_Football_Conference's (NFC) champion team, Carolina_Panthers, by 24_10 " +
        "to earn AFC third Super_Bowl title";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(19, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(title, third)"));
        Assert.assertTrue(ruleString.contains("_mod(title, super_bowl)"));
        Assert.assertTrue(ruleString.contains("_abbreviation(afc, american_football_conference)"));
        Assert.assertTrue(ruleString.contains("_abbreviation(nfc, national_football_conference)"));
        Assert.assertTrue(ruleString.contains("_is(team, denver_broncos)"));
        Assert.assertTrue(ruleString.contains("_is(team, carolina_panthers)"));
        Assert.assertTrue(ruleString.contains("_possess(american_football_conference, team)"));
        Assert.assertTrue(ruleString.contains("_possess(american_football_conference, denver_broncos)"));
        Assert.assertTrue(ruleString.contains("_possess(national_football_conference, team)"));
        Assert.assertTrue(ruleString.contains("_possess(national_football_conference, carolina_panthers)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clause)"));
        Assert.assertTrue(ruleString.contains("_property(1, defeat, by, '24_10')"));
        Assert.assertTrue(ruleString.contains("team(carolina_panthers)"));
        Assert.assertTrue(ruleString.contains("team(denver_broncos)"));
        Assert.assertTrue(ruleString.contains("event(1, defeat, team, team)"));
        Assert.assertTrue(ruleString.contains("event(1, defeat, denver_broncos, carolina_panthers)"));
        Assert.assertTrue(ruleString.contains("event(2, earn, afc, title)"));
        Assert.assertTrue(ruleString.contains("event(2, earn, afc, third_super_bowl_title)"));
        Assert.assertTrue(ruleString.contains("number('24_10')"));
    }

    @Test
    // Sentence : "The game was played on February 7 2016, at Levis_Stadium, in the San_Francisco_Bay_Area,
    // at Santa_Clara in California"
    void TestSentenceFour() {
        String content = "As Super_Bowl_50 was the 50th Super_Bowl, the league emphasized the 'golden " +
        "anniversary' with various gold_themed initiatives, as well as temporarily suspending the tradition of naming " +
        "each Super_Bowl with roman_numerals, under the tradition the game would have been known as Super_Bowl_L, so " +
        "that the logo could prominently feature the Arabic_numerals_50.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule);
        }

        Assert.assertEquals(27, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(super_bowl, '50th')"));
        Assert.assertTrue(ruleString.contains("_mod(anniversary, golden)"));
        Assert.assertTrue(ruleString.contains("_mod(initiative, various)"));
        Assert.assertTrue(ruleString.contains("_mod(initiative, gold_themed)"));
        Assert.assertTrue(ruleString.contains("_mod(feature, prominently)"));
        Assert.assertTrue(ruleString.contains("_mod(suspend, temporarily)"));
        Assert.assertTrue(ruleString.contains("_is('super_bowl_50', super_bowl)"));
        Assert.assertTrue(ruleString.contains("_is('super_bowl_50', '50th_super_bowl')"));
        Assert.assertTrue(ruleString.contains("_property(2, emphasize, null, suspend)"));
        Assert.assertTrue(ruleString.contains("_property(2, emphasize, null, tradition)"));
        Assert.assertTrue(ruleString.contains("_property(2, emphasize, null, know)"));
        Assert.assertTrue(ruleString.contains("_property(5, name, with, roman_numerals)"));
        Assert.assertTrue(ruleString.contains("_property(8, know, with, initiative)"));
        Assert.assertTrue(ruleString.contains("_property(8, know, as, super_bowl_l)"));
        Assert.assertTrue(ruleString.contains("_relation(8, 4, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(8, tradition, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(tradition, 5, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, emphasize, league, anniversary)"));
        Assert.assertTrue(ruleString.contains("event(2, emphasize, league, golden_anniversary)"));
        Assert.assertTrue(ruleString.contains("event(4, suspend, null, game)"));
        Assert.assertTrue(ruleString.contains("event(4, suspend, null, tradition)"));
        Assert.assertTrue(ruleString.contains("event(5, name, null, super_bowl)"));
        Assert.assertTrue(ruleString.contains("event(6, have, null, null)"));
        Assert.assertTrue(ruleString.contains("event(7, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(8, know, null, game)"));
        Assert.assertTrue(ruleString.contains("event(9, feature, logo, 'arabic_numerals_50')"));
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

        Assert.assertEquals(11, ruleString.size());
        Assert.assertTrue(ruleString.contains("time('february_7_2016')"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, play, null, game)"));
        Assert.assertTrue(ruleString.contains("_property(2, play, on, 'february_7_2016')"));
        Assert.assertTrue(ruleString.contains("_property(2, play, at, levis_stadium)"));
        Assert.assertTrue(ruleString.contains("_property(2, play, in, san_francisco_bay_area)"));
        Assert.assertTrue(ruleString.contains("_property(2, play, at, santa_clara)"));
        Assert.assertTrue(ruleString.contains("_property(santa_clara, in, california)"));
        Assert.assertTrue(ruleString.contains("month('february_7_2016', february)"));
        Assert.assertTrue(ruleString.contains("day('february_7_2016', 7)"));
        Assert.assertTrue(ruleString.contains("year('february_7_2016', 2016)"));
    }
}
