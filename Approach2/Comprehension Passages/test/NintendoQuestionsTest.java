import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;

/**
 * Created by dhruv on 2/3/2018.
 */
public class NintendoQuestionsTest {
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
    void TestSentenceEightQuestion1() {
        String content = "What did Hideki Yasuda say?";
        String[] queries = new String[]{"event(I1, tell, X, decision)"};
        Assert.assertTrue(QuestionTest.TestQuestion(content, queries));
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
