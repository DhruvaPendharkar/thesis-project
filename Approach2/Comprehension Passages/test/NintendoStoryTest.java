import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

/**
 * Created by dhruv on 2/3/2018.
 */
public class NintendoStoryTest {
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
    // Sentence : Nintendo said on Thursday, it would soon terminate it's smartphone app "Mittomo", which gained attention
    // as the game makers initial foray into the smartphone business, because it failed to attract enough players.
    void TestSentenceOne() {
        String content = "Nintendo said on Thursday that Nintendo would soon terminate Nintendo smartphone_app Miitomo, " +
                "which gained attention as the game_makers_initial_foray into the smartphone business, " +
                "because Miitomo failed to attract enough players";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(14, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(1, say, nintendo, thursday)"));
        Assert.assertTrue(ruleString.contains("event(2, terminate, nintendo, miitomo)"));
        Assert.assertTrue(ruleString.contains("event(3, gain, miitomo, game_makers_initial_foray)"));
        Assert.assertTrue(ruleString.contains("event(3, gain, miitomo, attention)"));
        Assert.assertTrue(ruleString.contains("event(3, gain, miitomo, business)"));
        Assert.assertTrue(ruleString.contains("event(4, fail, miitomo, null)"));
        Assert.assertTrue(ruleString.contains("event(5, attract, miitomo, player)"));
        Assert.assertTrue(ruleString.contains("time(thursday)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
        Assert.assertTrue(ruleString.contains("_adj(business, smartphone)"));
        Assert.assertTrue(ruleString.contains("_adj(player, enough)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 5, _clcomplement)"));
    }

    @Test
    // Sentence : "The decision was made to streamline our resources to other smartphone_apps", a nintendo spokesman said.
    void TestSentenceTwo() {
        String content = "A nintendo_spokesman said that, the decision was made to streamline Nintendo resources to other smartphone_apps";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("_relation(1, 3, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(4, streamline, decision, resource)"));
        Assert.assertTrue(ruleString.contains("event(4, streamline, decision, smartphone_apps)"));
        Assert.assertTrue(ruleString.contains("event(3, make, decision, null)"));
        // TODO : Assert.assertTrue(ruleString.contains("event(3, make, null, decision)"));
        Assert.assertTrue(ruleString.contains("event(1, say, nintendo_spokesman, null)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
        // TODO : Assert.assertTrue(ruleString.contains("modifier(4, smartphone_apps, to"));
        Assert.assertTrue(ruleString.contains("_adj(smartphone_apps, other)"));
    }

    @Test
    // Sentence : "The number of active users of the game has been declining".
    void TestSentenceThree() {
        String content = "The number of active users of the game has been declining";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(2, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(3, decline, number, null)"));
        Assert.assertTrue(ruleString.contains("_adj(user, active)"));
        // TODO : Assert.assertTrue(ruleString.contains("event(3, decline, number_of_users, null)"));
        // TODO : Assert.assertTrue(ruleString.contains("_adj(3, user, active)"));
    }

    @Test
    // Sentence : “Miitomo,” which Nintendo introduced globally in March 2016, features the company’s “Mii” avatar system
    // and lets users communicate by exchanging personal information such as favorite movies.
    void TestSentenceFour() {
        String content = "Miitomo, which Nintendo introduced globally in March 2016, features the company Mii avatar_system " +
                "and lets users communicate by exchanging personal information such as favorite movies";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(13, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(1, introduce, nintendo, march)"));
        Assert.assertTrue(ruleString.contains("time(march)"));
        Assert.assertTrue(ruleString.contains("event(5, exchange, null, information)"));
        Assert.assertTrue(ruleString.contains("event(4, communicate, user, null)"));
        Assert.assertTrue(ruleString.contains("event(1, introduce, nintendo, miitomo)"));
        Assert.assertTrue(ruleString.contains("_adj(information, personal)"));
        Assert.assertTrue(ruleString.contains("event(2, feature, miitomo, avatar_system)"));
        Assert.assertTrue(ruleString.contains("event(3, let, miitomo, null)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_adj(movie, favorite)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
    }

    @Test
    // Sentence : Though the company described it as a game app, analysts and players viewed it more as a
    // social-networking service and it failed to gain users from larger rivals such as Facebook Inc
    void TestSentenceFive() {
        String content = "Though the company described Miitomo as a game_app, analysts and players viewed Miitomo more as a " +
                "social-networking service and Miitomo failed to gain users from larger rivals such as Facebook_Inc";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(9, ruleString.size());
        Assert.assertTrue(ruleString.contains("_adj(rival, larger)"));
        Assert.assertTrue(ruleString.contains("event(2, view, null, service)"));
        Assert.assertTrue(ruleString.contains("event(4, gain, null, rival)"));
        Assert.assertTrue(ruleString.contains("event(1, describe, company, miitomo)"));
        Assert.assertTrue(ruleString.contains("event(2, view, null, miitomo)"));
        // TODO : Assert.assertTrue(ruleString.contains("_adj(2, service, social_networking)"));
        Assert.assertTrue(ruleString.contains("_adj(service, social_networking)"));
        Assert.assertTrue(ruleString.contains("event(4, gain, null, user)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
    }

    @Test
    // Sentence : Kyoto-based Nintendo said the free-to-play app’s service would end on May 9.
    void TestSentenceSix() {
        String content = "Kyoto-based Nintendo said the free-to-play app_service would end on May 9.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(2, end, app_service, may)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("time(may)"));
        Assert.assertTrue(ruleString.contains("_adj(app_service, free_to_play)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
        Assert.assertTrue(ruleString.contains("event(1, say, nintendo, null)"));
    }

    @Test
    // Sentence : “The app was a failure since its early stage and I had been saying Nintendo should shut down
    // the service as soon as possible,” said Hideki Yasuda, an analyst at Ace Research Institute.
    void TestSentenceSeven() {
        String content = "The app was a failure since its early stage and Hideki_Yasuda had been saying that, Nintendo should " +
                "shut down the service as soon as possible, said Hideki_Yasuda, an analyst at Ace_Research_Institute.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(5, shut, nintendo, service)"));
        Assert.assertTrue(ruleString.contains("_adj(stage, early)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 5, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(4, say, hideki_yasuda, null)"));
        Assert.assertTrue(ruleString.contains("event(6, say, analyst, hideki_yasuda)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
    }

    @Test
    // Sentence : Hideki Yasuda said, “Without a large number of active users who would use the app daily,
    // this kind of service is not attractive.”.
    void TestSentenceEight() {
        String content = "Hideki_Yasuda said that, without a large number of active users, who would use the app daily, " +
                "this kind of service is not attractive.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(1, say, hideki_yasuda, number)"));
        Assert.assertTrue(ruleString.contains("_adj(number, large)"));
        Assert.assertTrue(ruleString.contains("event(2, use, number, app)"));
        Assert.assertTrue(ruleString.contains("_adj(user, active)"));
    }

    @Test
    // Sentence : Besides “Miitomo,” Nintendo has introduced “Super Mario Run,” “Fire Emblem Heroes”
    // and “Animal Crossing: Pocket Camp” as game apps for smartphone users.
    void TestSentenceNine() {
        String content = "Besides Miitomo, Nintendo has introduced Super_Mario_Run, Fire_Emblem_Heroes and " +
                "Animal_Crossing_Pocket_Camp as game_apps for smartphone users";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("company(miitomo)"));
        Assert.assertTrue(ruleString.contains("event(2, introduce, nintendo, miitomo)"));
        Assert.assertTrue(ruleString.contains("event(2, introduce, nintendo, animal_crossing_pocket_camp)"));
        Assert.assertTrue(ruleString.contains("_adj(user, smartphone)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
        Assert.assertTrue(ruleString.contains("event(2, introduce, nintendo, game_apps)"));
        Assert.assertTrue(ruleString.contains("event(2, introduce, nintendo, fire_emblem_heroes)"));
    }

    @Test
    // Sentence : Those games have had more success than “Miitomo” but the smartphone business has yet
    // to become a major revenue generator for Nintendo.
    void TestSentenceTen() {
        String content = "Super_Mario_Run, Fire_Emblem_Heroes and Animal_Crossing_Pocket_Camp have had more success than Miitomo, " +
                "but the smartphone business has yet to become a major revenue_generator for Nintendo.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(15, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(3, have, business, null)"));
        Assert.assertTrue(ruleString.contains("event(2, have, fire_emblem_heroes, success)"));
        Assert.assertTrue(ruleString.contains("event(2, have, animal_crossing_pocket_camp, miitomo)"));
        Assert.assertTrue(ruleString.contains("event(2, have, fire_emblem_heroes, miitomo)"));
        Assert.assertTrue(ruleString.contains("_adj(revenue_generator, major)"));
        Assert.assertTrue(ruleString.contains("event(2, have, animal_crossing_pocket_camp, success)"));
        Assert.assertTrue(ruleString.contains("event(4, become, business, null)"));
        Assert.assertTrue(ruleString.contains("_adj(success, more)"));
        Assert.assertTrue(ruleString.contains("_adj(business, smartphone)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
    }

    @Test
    // Sentence : Company executives say they view smartphone games as a way of attracting customers
    // who may later try out Nintendo machines such as the Switch.
    void TestSentenceEleven() {
        String content = "Company executives say that, the executives view smartphone games as a way of attracting customers, " +
                "who may later try out Nintendo machines such as the Switch.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(10, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(2, view, executive, way)"));
        Assert.assertTrue(ruleString.contains("_adj(game, smartphone)"));
        Assert.assertTrue(ruleString.contains("event(3, attract, null, customer)"));
        Assert.assertTrue(ruleString.contains("event(1, say, executive, null)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(4, try, customer, machine)"));
        Assert.assertTrue(ruleString.contains("event(2, view, executive, game)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
    }
}
