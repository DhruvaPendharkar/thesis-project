
import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

/**
 * Created by dhruv on 3/7/2018.
 */
public class ABCQuestionTest {
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
    // What company owns the American Broadcasting Company?
    void TestSentenceOne() {
        String content = "What company owns the American_Broadcasting_Company?";
        Question question = new Question(content);
        System.out.println(Sentence.DependenciesToString(question));
        List<Rule> rules = question.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(3, ruleString.size());
        Assert.assertTrue(ruleString.contains("_property(E1, own, _by, X1),_similar(american_broadcasting_company, O1),company(X1, _),event(E1, own, _, O1)"));
        Assert.assertTrue(ruleString.contains("_relation(X1, E1, _clause),company(X1, _),event(E1, own, _, _)"));
        Assert.assertTrue(ruleString.contains("_similar(american_broadcasting_company, O1),company(X1, _),event(E1, own, X1, O1)"));
    }

    @Test
    // In what year did ABC stylize it's logo as abc?
    void TestSentenceTwo() {
        String content = "Since what year did ABC stylize abc's logo, as abc ?";
        Question question = new Question(content);
        System.out.println(Sentence.DependenciesToString(question));
        List<Rule> rules = question.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(3, ruleString.size());
        Assert.assertTrue(ruleString.contains("_property(E2, stylize, _by, S2),_property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, _, O2),organization(abc),time(T2),year(T2, X2)"));
        Assert.assertTrue(ruleString.contains("_property(E2, stylize, since, X2),_relation(S2, E2, _clause),_similar(abc, S2),event(E2, stylize, _, _),organization(abc),time(T2),year(T2, X2)"));
        Assert.assertTrue(ruleString.contains("_property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, S2, O2),organization(abc),time(T2),year(T2, X2)"));
    }

    @Test
    // In what borough of New York City is ABC headquartered?
    void TestSentenceThree() {
        String content = "In what borough of New_York_City is ABC headquartered?";
        Question question = new Question(content);
        System.out.println(Sentence.DependenciesToString(question));
        List<Rule> rules = question.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(3, ruleString.size());
        Assert.assertTrue(ruleString.contains("_property(E2, headquarter, _by, S2),_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, O2),organization(abc)"));
        Assert.assertTrue(ruleString.contains("_property(E2, headquarter, in, X2),_relation(S2, E2, _clause),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, _),organization(abc)"));
        Assert.assertTrue(ruleString.contains("_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, S2, O2),organization(abc)"));
    }

    @Test
    // On what streets is the ABC headquarters located?
    void TestSentenceFour() {
        String content = "On what streets is the ABC headquarters located?";
        Question question = new Question(content);
        System.out.println(Sentence.DependenciesToString(question));
        List<Rule> rules = question.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // Disney-ABC Television Group is a subsidiary of what division of the Walt Disney Company?
    void TestSentenceFive() {
        String content = "Disney_ABC Television Group is a subsidiary of what division of The_Walt_Disney_Company?";
        Question question = new Question(content);
        System.out.println(Sentence.DependenciesToString(question));
        List<Rule> rules = question.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(-1, ruleString.size());
    }
}
