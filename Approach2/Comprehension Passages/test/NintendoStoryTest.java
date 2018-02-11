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
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(13, ruleString.size());
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

    /*@Test
    void TestSentenceOneQuestion1() {
        String[] queries = new String[]{"?- event(I, say, nintendo, Y), _relation(I, R), " +
                "event(R, terminate, nintendo, miitomo), time(Y)"};
        String content = "When did Nintendo tell about the termination of Nintendo smartphone_app Miitomo?";
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }*/

    /*@Test
    void TestSentenceOneQuestion2() {
        String content = "What is Nintendo smartphone_app called?";
        //TODO : Add _owns predicate as well
        String[] queries = new String[]{""};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }*/

    @Test
    void TestSentenceOneQuestion3() {
        String content = "Who would terminate Miitomo?";
        String[] queries = new String[]{"event(I1, terminate, X, miitomo)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));

    }

    @Test
    void TestSentenceOneQuestion4() {
        String content = "What gained attention in the smartphone business?";
        String[] queries = new String[]{"event(I1, gain, X, business),event(I1, gain, X, attention),_adj(business, smartphone)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceOneQuestion5() {
        String content = "What failed to attract players?";
        String[] queries = new String[]{"event(I1, fail, X, null),_relation(I1, I2, _clcomplement),event(I2, attract, X, player)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    /*@Test
    void TestSentenceOneQuestion6() {
        String content = "Why did Nintendo terminate Miitomo?";
        String[] queries = new String[]{""};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }*/

    /*@Test
    void TestSentenceOneQuestion7() {
        String content = "Where did Miitomo gain attention?";
        String[] queries = new String[]{""};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }*/

    /*@Test
    void TestSentenceOneQuestion8() {
        String content = "What is Miitomo?";
        String[] queries = new String[]{"-"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }*/

    @Test
    void TestSentenceOneQuestion9() {
        String content = "What did Miitomo fail to do?";
        String[] queries = new String[]{"event(I2, fail, miitomo, null),_relation(I2, I3, _clcomplement),event(I3, DI3, miitomo, X)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
        // Sentence : "The decision was made to streamline our resources to other smartphone_apps", a nintendo spokesman said.
    void TestSentenceTwo() {
        String content = "A nintendo_spokesman said that, the decision was made to streamline Nintendo resources to other smartphone_apps.";
        Sentence sentence = Sentence.ParseSentence(content);
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("_relation(1, 3, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(4, streamline, decision, resource)"));
        Assert.assertTrue(ruleString.contains("event(3, make, decision, null)"));
        Assert.assertTrue(ruleString.contains("event(1, say, nintendo_spokesman, null)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
    }

    @Test
    void TestSentenceTwoQuestion1() {
        String content = "Who told about the decision?";
        String[] queries = new String[]{"?"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceTwoQuestion2() {
        String content = "What was the decision?";
        String[] queries = new String[]{"?"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceTwoQuestion3() {
        String content = "What decision was made?";
        String[] queries = new String[]{"?"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceTwoQuestion4() {
        String content = "What decision was made by Nintendo?";
        String[] queries = new String[]{""};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceTwoQuestion5() {
        String content = "What decision did Nintendo make?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceTwoQuestion6() {
        String content = "Where are Nintendo resources being streamlined?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceTwoQuestion7() {
        String content = "What did the spokesman say?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceTwoQuestion8() {
        String content = "What did the nintendo_spokesman say?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
        // Sentence : "The number of active users of the game has been declining".
    void TestSentenceThree() {
        String content = "The number of active users of the game has been declining";
        Sentence sentence = Sentence.ParseSentence(content);
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(2, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(3, decline, number, null)"));
        Assert.assertTrue(ruleString.contains("_adj(user, active)"));
    }

    @Test
    void TestSentenceThreeQuestion1() {
        String content = "What has been declining?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceThreeQuestion2() {
        String content = "Whose users have been declining?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
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

        Assert.assertEquals(11, ruleString.size());
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
    void TestSentenceFourQuestion1() {
        String content = "What did Nintendo introduce in March 2016?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFourQuestion2() {
        String content = "When did Nintendo introduce Miitomo?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFourQuestion3() {
        String content = "What did Nintendo do in March 2016?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFourQuestion4() {
        String content = "What does Miitomo feature?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFourQuestion5() {
        String content = "What is Mii?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFourQuestion6() {
        String content = "What is the avatar_system called?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFourQuestion7() {
        String content = "What does Mittomo do?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFourQuestion8() {
        String content = "How does Miitomo help users communicate?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFourQuestion9() {
        String content = "What information does Miitomo let users exchange?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFourQuestion10() {
        String content = "How do users communicate?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
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

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("_adj(rival, larger)"));
        Assert.assertTrue(ruleString.contains("event(2, view, null, service)"));
        Assert.assertTrue(ruleString.contains("event(4, gain, null, rival)"));
        Assert.assertTrue(ruleString.contains("event(1, describe, company, miitomo)"));
        Assert.assertTrue(ruleString.contains("event(2, view, null, miitomo)"));
        Assert.assertTrue(ruleString.contains("_adj(service, social-networking)"));
        Assert.assertTrue(ruleString.contains("event(4, gain, null, user)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
    }

    @Test
    void TestSentenceFiveQuestion1() {
        String content = "What did the company describe Miitomo as?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFiveQuestion2() {
        String content = "What did the company describe a game_app as?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFiveQuestion3() {
        String content = "Who viewed Miitomo as a service?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFiveQuestion4() {
        String content = "Who viewed Miitomo as a social-networking service?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFiveQuestion5() {
        String content = "What failed to gain users from larger rivals?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFiveQuestion6() {
        String content = "What did Miitomo fail to do?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceFiveQuestion7() {
        String content = "Who are Miitomos rivals?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
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

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(2, end, app_service, may)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("time(may)"));
        Assert.assertTrue(ruleString.contains("_adj(app_service, free-to-play)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
        Assert.assertTrue(ruleString.contains("event(1, say, nintendo, null)"));
    }

    @Test
    void TestSentenceSixQuestion1() {
        String content = "What did Nintendo say?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSixQuestion2() {
        String content = "Where is nintendo based?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSixQuestion3() {
        String content = "When would the free-to-play app_service end?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSixQuestion4() {
        String content = "What would end on May 9?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSixQuestion5() {
        String content = "What would end in May?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
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

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(5, shut, nintendo, service)"));
        Assert.assertTrue(ruleString.contains("_adj(stage, early)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 5, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(4, say, hideki_yasuda, null)"));
        Assert.assertTrue(ruleString.contains("event(6, say, analyst, hideki_yasuda)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
    }

    @Test
    void TestSentenceSevenQuestion1() {
        String content = "What was a failure?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSevenQuestion2() {
        String content = "What was a failure since its early stage?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSevenQuestion3() {
        String content = "What did Hideki Yasuda say?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSevenQuestion4() {
        String content = "What should Nintendo shut down?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSevenQuestion5() {
        String content = "Who is an analyst?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSevenQuestion6() {
        String content = "Who is an analyst at Ace Research Institute?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceSevenQuestion7() {
        String content = "What is Ace Research Institute?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
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

        Assert.assertEquals(4, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(1, say, hideki_yasuda, null)"));
        Assert.assertTrue(ruleString.contains("_adj(number, large)"));
        Assert.assertTrue(ruleString.contains("event(2, use, number, app)"));
        Assert.assertTrue(ruleString.contains("_adj(user, active)"));
    }

    @Test
    void TestSentenceEightQuestion1() {
        String content = "What did Hideki Yasuda say?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
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
    void TestSentenceNineQuestion1() {
        String content = "What has Nintendo introduced?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceNineQuestion2() {
        String content = "Who introduced Super_Mario_Run?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceNineQuestion3() {
        String content = "Who introduced Fire_Emblem_Heroes?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceNineQuestion4() {
        String content = "Who introduced Animal_Crossing_Pocket_Camp?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceNineQuestion5() {
        String content = "What are the game_apps?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
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

        Assert.assertEquals(12, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(3, have, business, null)"));
        Assert.assertTrue(ruleString.contains("event(2, have, fire_emblem_heroes, success)"));
        Assert.assertTrue(ruleString.contains("event(2, have, animal_crossing_pocket_camp, miitomo)"));
        Assert.assertTrue(ruleString.contains("event(2, have, fire_emblem_heroes, miitomo)"));
        Assert.assertTrue(ruleString.contains("_adj(revenue_generator, major)"));
        Assert.assertTrue(ruleString.contains("_relation(4, , _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(2, have, animal_crossing_pocket_camp, success)"));
        Assert.assertTrue(ruleString.contains("event(4, become, business, null)"));
        Assert.assertTrue(ruleString.contains("_adj(success, more)"));
        Assert.assertTrue(ruleString.contains("_adj(business, smartphone)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
    }

    @Test
    void TestSentenceTenQuestion1() {
        String content = "Who has had more success than Miitomo?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceTenQuestion2() {
        String content = "Super_Mario_Run has had more success than what?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceTenQuestion3() {
        String content = "What has yet to become a revenue_generator?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
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

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(2, view, executive, way)"));
        Assert.assertTrue(ruleString.contains("_adj(game, smartphone)"));
        Assert.assertTrue(ruleString.contains("event(3, attract, null, customer)"));
        Assert.assertTrue(ruleString.contains("event(1, say, executive, null)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(4, try, customer, machine)"));
        Assert.assertTrue(ruleString.contains("event(2, view, executive, game)"));
        Assert.assertTrue(ruleString.contains("company(nintendo)"));
    }

    @Test
    void TestSentenceElevenQuestion1() {
        String content = "What do the company executives say?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceElevenQuestion2() {
        String content = "What do the executives view as a way of attracting customers?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceElevenQuestion3() {
        String content = "Who may later try out Nintendo machines?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }

    @Test
    void TestSentenceElevenQuestion4() {
        String content = "What is Switch?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
    }
}
