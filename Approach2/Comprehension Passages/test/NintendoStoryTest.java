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
                "Miitomo gained attention as the game_makers_initial_foray into the smartphone business, " +
                "because Miitomo failed to attract enough players";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(21, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nintendo)"));
        Assert.assertTrue(ruleString.contains("organization(miitomo)"));
        Assert.assertTrue(ruleString.contains("time(thursday)"));
        Assert.assertTrue(ruleString.contains("_mod(miitomo, nintendo)"));
        Assert.assertTrue(ruleString.contains("_mod(terminate, soon)"));
        Assert.assertTrue(ruleString.contains("_mod(player, enough)"));
        Assert.assertTrue(ruleString.contains("_mod(business, smartphone)"));
        Assert.assertTrue(ruleString.contains("_property(say, on(thursday))"));
        Assert.assertTrue(ruleString.contains("_property(gain, as(game_makers_initial_foray))"));
        Assert.assertTrue(ruleString.contains("_property(gain, into(business))"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 5, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(1, say, nintendo, null)"));
        Assert.assertTrue(ruleString.contains("event(2, terminate, nintendo, miitomo)"));
        Assert.assertTrue(ruleString.contains("event(3, gain, miitomo, attention)"));
        Assert.assertTrue(ruleString.contains("event(4, fail, miitomo, null)"));
        Assert.assertTrue(ruleString.contains("event(5, attract, miitomo, player)"));
        Assert.assertTrue(ruleString.contains("event(5, attract, miitomo, enough_player)"));
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
            System.out.println(rule.toString());
        }

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nintendo)"));
        Assert.assertTrue(ruleString.contains("event(1, say, nintendo_spokesman, null)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 3, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(3, make, null, decision)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(4, streamline, decision, resource)"));
        Assert.assertTrue(ruleString.contains("_property(streamline, to(smartphone_apps))"));
        Assert.assertTrue(ruleString.contains("_mod(smartphone_apps, other)"));
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
            System.out.println(rule.toString());
        }

        Assert.assertEquals(4, ruleString.size());
        Assert.assertTrue(ruleString.contains("_property(number, of(user))"));
        Assert.assertTrue(ruleString.contains("_mod(user, active)"));
        Assert.assertTrue(ruleString.contains("_property(user, of(game))"));
        Assert.assertTrue(ruleString.contains("event(3, decline, number, null)"));
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
            System.out.println(rule.toString());
        }

        Assert.assertEquals(17, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nintendo)"));
        Assert.assertTrue(ruleString.contains("time(march_2016)"));
        Assert.assertTrue(ruleString.contains("event(2, introduce, nintendo, miitomo)"));
        Assert.assertTrue(ruleString.contains("_mod(introduce, globally)"));
        Assert.assertTrue(ruleString.contains("_property(introduce, in(march_2016))"));
        Assert.assertTrue(ruleString.contains("event(3, feature, miitomo, avatar_system)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _conj)"));
        Assert.assertTrue(ruleString.contains("event(4, let, miitomo, null)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 5, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(5, communicate, user, null)"));
        Assert.assertTrue(ruleString.contains("_relation(5, 6, _clause)"));
        Assert.assertTrue(ruleString.contains("event(6, exchange, null, information)"));
        Assert.assertTrue(ruleString.contains("event(6, exchange, null, personal_information)"));
        Assert.assertTrue(ruleString.contains("event(6, exchange, null, information_such_movie)"));
        Assert.assertTrue(ruleString.contains("_mod(information, personal)"));
        Assert.assertTrue(ruleString.contains("_property(information, such(movie))"));
        Assert.assertTrue(ruleString.contains("_mod(movie, favorite)"));
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
            System.out.println(rule.toString());
        }

        Assert.assertEquals(14, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(1, describe, company, miitomo)"));
        Assert.assertTrue(ruleString.contains("_property(describe, as(game_app))"));
        Assert.assertTrue(ruleString.contains("event(2, view, analyst, miitomo)"));
        Assert.assertTrue(ruleString.contains("event(2, view, player, miitomo)"));
        Assert.assertTrue(ruleString.contains("_relation(2, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("_property(view, as(service))"));
        Assert.assertTrue(ruleString.contains("_property(view, miitomo)"));
        Assert.assertTrue(ruleString.contains("_mod(service, social_networking)"));
        Assert.assertTrue(ruleString.contains("_relation(service, 3, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(4, gain, null, user)"));
        Assert.assertTrue(ruleString.contains("_property(gain, from(rival))"));
        Assert.assertTrue(ruleString.contains("_mod(rival, larger)"));
        Assert.assertTrue(ruleString.contains("_property(rival, such(facebook_inc))"));
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
            System.out.println(rule.toString());
        }

        Assert.assertEquals(10, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nintendo)"));
        Assert.assertTrue(ruleString.contains("time(may_9)"));
        Assert.assertTrue(ruleString.contains("_mod(nintendo, kyoto_based)"));
        Assert.assertTrue(ruleString.contains("event(1, say, nintendo, null)"));
        Assert.assertTrue(ruleString.contains("event(1, say, kyoto_based_nintendo, null)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_mod(app_service, free_to_play)"));
        Assert.assertTrue(ruleString.contains("event(2, end, app_service, null)"));
        Assert.assertTrue(ruleString.contains("event(2, end, free_to_play_app_service, null)"));
        Assert.assertTrue(ruleString.contains("_property(end, on(may_9))"));
    }

    @Test
    // Sentence : “The app was a failure since its early stage and I had been saying Nintendo should shut down
    // the service as soon as possible,” said Hideki Yasuda, an analyst at Ace Research Institute.
    void TestSentenceSeven() {
        String content = "The app was a failure since Mittomo's early stage and Hideki_Yasuda had been saying that, Nintendo should " +
                "shut down the service as soon as possible, said Hideki_Yasuda, an analyst at Ace_Research_Institute.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(16, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nintendo)"));
        Assert.assertTrue(ruleString.contains("_property(failure, since(stage))"));
        Assert.assertTrue(ruleString.contains("_is(app, failure)"));
        Assert.assertTrue(ruleString.contains("failure(app)"));
        Assert.assertTrue(ruleString.contains("_mod(stage, early)"));
        Assert.assertTrue(ruleString.contains("_possess(mittomo, stage)"));
        Assert.assertTrue(ruleString.contains("event(4, say, hideki_yasuda, null)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 5, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(5, shut, nintendo, service)"));
        Assert.assertTrue(ruleString.contains("event(6, say, hideki_yasuda, null)"));
        Assert.assertTrue(ruleString.contains("event(6, say, analyst, null)"));
        Assert.assertTrue(ruleString.contains("_relation(6, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_is(hideki_yasuda, analyst)"));
        Assert.assertTrue(ruleString.contains("analyst(hideki_yasuda)"));
        Assert.assertTrue(ruleString.contains("_property(analyst, at(ace_research_institute))"));
    }

    @Test
    // Sentence : Hideki Yasuda said, “Without a large number of active users who would use the app daily,
    // this kind of service is not attractive.”.
    void TestSentenceEight() {
        String content = "Hideki_Yasuda said that, without a large number of active users, " +
                "users would use the app daily, this kind of service is not attractive.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("_property(number, of(user))"));
        Assert.assertTrue(ruleString.contains("_mod(number, large)"));
        Assert.assertTrue(ruleString.contains("_mod(user, active)"));
        Assert.assertTrue(ruleString.contains("event(2, use, user, app)"));
        Assert.assertTrue(ruleString.contains("_mod(use, daily)"));
        Assert.assertTrue(ruleString.contains("_property(use, without(number))"));
        Assert.assertTrue(ruleString.contains("_property(kind, of(service))"));
        Assert.assertTrue(ruleString.contains("_is(kind, attractive)"));
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
            System.out.println(rule.toString());
        }

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nintendo)"));
        Assert.assertTrue(ruleString.contains("event(2, introduce, nintendo, super_mario_run)"));
        Assert.assertTrue(ruleString.contains("event(2, introduce, nintendo, fire_emblem_heroes)"));
        Assert.assertTrue(ruleString.contains("event(2, introduce, nintendo, animal_crossing_pocket_camp)"));
        Assert.assertTrue(ruleString.contains("_property(introduce, besides(miitomo))"));
        Assert.assertTrue(ruleString.contains("_property(introduce, as(game_apps))"));
        Assert.assertTrue(ruleString.contains("_property(game_apps, for(user))"));
        Assert.assertTrue(ruleString.contains("_mod(user, smartphone)"));

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
            System.out.println(rule.toString());
        }

        Assert.assertEquals(19, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nintendo)"));
        Assert.assertTrue(ruleString.contains("event(2, have, super_mario_run, success)"));
        Assert.assertTrue(ruleString.contains("event(2, have, super_mario_run, more_success)"));
        Assert.assertTrue(ruleString.contains("event(2, have, fire_emblem_heroes, success)"));
        Assert.assertTrue(ruleString.contains("event(2, have, fire_emblem_heroes, more_success)"));
        Assert.assertTrue(ruleString.contains("event(2, have, animal_crossing_pocket_camp, success)"));
        Assert.assertTrue(ruleString.contains("event(2, have, animal_crossing_pocket_camp, more_success)"));
        Assert.assertTrue(ruleString.contains("_property(have, than(miitomo))"));
        Assert.assertTrue(ruleString.contains("_relation(2, 3, _conj)"));
        Assert.assertTrue(ruleString.contains("_mod(success, more)"));
        Assert.assertTrue(ruleString.contains("_mod(business, smartphone)"));
        Assert.assertTrue(ruleString.contains("event(3, have, business, null)"));
        Assert.assertTrue(ruleString.contains("event(3, have, smartphone_business, null)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_mod(have, yet)"));
        Assert.assertTrue(ruleString.contains("event(4, become, business, null)"));
        Assert.assertTrue(ruleString.contains("event(4, become, smartphone_business, null)"));
        Assert.assertTrue(ruleString.contains("_mod(revenue_generator, major)"));
        Assert.assertTrue(ruleString.contains("_property(revenue_generator, for(nintendo))"));
    }

    @Test
    // Sentence : Company executives say they view smartphone games as a way of attracting customers
    // who may later try out Nintendo machines such as the Switch.
    void TestSentenceEleven() {
        String content = "Company executives say that, the executives view smartphone games as a way of attracting customers, " +
                "customers may later try out Nintendo machines such as the Switch.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        HashSet<String> ruleString = new HashSet<>();
        List<Rule> rules = sentence.GenerateRules();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(13, ruleString.size());
        Assert.assertTrue(ruleString.contains("organization(nintendo)"));
        Assert.assertTrue(ruleString.contains("event(1, say, executive, null)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(2, view, executive, game)"));
        Assert.assertTrue(ruleString.contains("event(2, view, executive, smartphone_game)"));
        Assert.assertTrue(ruleString.contains("_property(view, as(way))"));
        Assert.assertTrue(ruleString.contains("_mod(game, smartphone)"));
        Assert.assertTrue(ruleString.contains("_relation(way, 3, _clause)"));
        Assert.assertTrue(ruleString.contains("event(3, attract, null, customer)"));
        Assert.assertTrue(ruleString.contains("event(4, try, customer, machine)"));
        Assert.assertTrue(ruleString.contains("event(4, try, customer, machine_such_switch)"));
        Assert.assertTrue(ruleString.contains("_mod(try, later)"));
        Assert.assertTrue(ruleString.contains("_property(machine, such(switch))"));
    }
}
