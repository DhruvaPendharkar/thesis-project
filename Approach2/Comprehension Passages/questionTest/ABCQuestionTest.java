
import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.*;

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
        List<Rule> rules = question.GenerateAllRules();
        LiteralType type = LiteralType.FACT;
        System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
        for(Rule rule : rules){
            if(type != rule.maxRuleQuality) {
                type = rule.maxRuleQuality;
                System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
            }
            System.out.println(String.format("Assert.assertTrue(rules.contains(\"%s\"));", rule.toString()));
        }

        System.out.print("\n\n");
        List<String> ruleString = new ArrayList<>();
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(14, ruleString.size());
        /*----------------  FACT  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(company, X1),_property(E1, own, _by, X1),_similar(american_broadcasting_company, O1),event(E1, own, _, O1)"));
        Assert.assertTrue(ruleString.contains("_mod(company, X1),_relation(X1, E1, _clause),event(E1, own, _, _)"));
        Assert.assertTrue(ruleString.contains("_mod(company, X1),_similar(american_broadcasting_company, O1),event(E1, own, X1, O1)"));
        Assert.assertTrue(ruleString.contains("_property(E1, own, _by, X1),_similar(american_broadcasting_company, O1),company(X1, _),event(E1, own, _, O1)"));
        Assert.assertTrue(ruleString.contains("_relation(X1, E1, _clause),company(X1, _),event(E1, own, _, _)"));
        Assert.assertTrue(ruleString.contains("_similar(american_broadcasting_company, O1),company(X1, _),event(E1, own, X1, O1)"));
        /*----------------  ANSWER_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(company, X1),_property(E1, own, _by, X1)"));
        Assert.assertTrue(ruleString.contains("_mod(company, X1),_relation(X1, E1, _clause)"));
        Assert.assertTrue(ruleString.contains("_mod(company, X1),event(E1, own, X1, O1)"));
        Assert.assertTrue(ruleString.contains("_property(E1, own, _by, X1),company(X1, _)"));
        Assert.assertTrue(ruleString.contains("_relation(X1, E1, _clause),company(X1, _)"));
        Assert.assertTrue(ruleString.contains("company(X1, _),event(E1, own, X1, O1)"));
        /*----------------  BASE_CONSTRAINT  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(company, X1)"));
        Assert.assertTrue(ruleString.contains("company(X1, _)"));
    }

    @Test
    // In what year did ABC stylize it's logo as abc?
    void TestSentenceTwo() {
        String content = "Since what year did ABC stylize abc's logo, as abc ?";
        Question question = new Question(content);
        System.out.println(Sentence.DependenciesToString(question));
        List<Rule> rules = question.GenerateAllRules();
        LiteralType type = LiteralType.FACT;
        System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
        for(Rule rule : rules){
            if(type != rule.maxRuleQuality) {
                type = rule.maxRuleQuality;
                System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
            }
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        System.out.print("\n\n");
        List<String> ruleString = new ArrayList<>();
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(8, ruleString.size());
        /*----------------  FACT  ------------------*/
        Assert.assertTrue(ruleString.contains("_possess(abc, logo),_property(E2, stylize, _by, S2),_property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, _, O2),organization(abc),time(T2),year(T2, X2)"));
        Assert.assertTrue(ruleString.contains("_possess(abc, logo),_property(E2, stylize, since, X2),_relation(S2, E2, _clause),_similar(abc, S2),event(E2, stylize, _, _),organization(abc),time(T2),year(T2, X2)"));
        Assert.assertTrue(ruleString.contains("_possess(abc, logo),_property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, S2, O2),organization(abc),time(T2),year(T2, X2)"));
        /*----------------  CONSTRAINT_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("_property(E2, stylize, _by, S2),_property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, _, O2),time(T2),year(T2, X2)"));
        Assert.assertTrue(ruleString.contains("_property(E2, stylize, since, X2),_relation(S2, E2, _clause),_similar(abc, S2),event(E2, stylize, _, _),time(T2),year(T2, X2)"));
        Assert.assertTrue(ruleString.contains("_property(E2, stylize, since, X2),_similar(abc, S2),_similar(logo, O2),event(E2, stylize, S2, O2),time(T2),year(T2, X2)"));
        /*----------------  ANSWER_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("_property(E2, stylize, since, X2),time(T2),year(T2, X2)"));
        /*----------------  BASE_CONSTRAINT  ------------------*/
        Assert.assertTrue(ruleString.contains("time(T2),year(T2, X2)"));
    }

    @Test
    // In what borough of New York City is ABC headquartered?
    void TestSentenceThree() {
        String content = "In what borough of New_York_City is ABC headquartered?";
        Question question = new Question(content);
        System.out.println(Sentence.DependenciesToString(question));
        List<Rule> rules = question.GenerateAllRules();
        LiteralType type = LiteralType.FACT;
        System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
        for(Rule rule : rules){
            if(type != rule.maxRuleQuality) {
                type = rule.maxRuleQuality;
                System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
            }
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        System.out.print("\n\n");
        List<String> ruleString = new ArrayList<>();
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(16, ruleString.size());
        /*----------------  FACT  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, _by, S2),_property(E2, headquarter, in, X2),_similar(abc, S2),event(E2, headquarter, _, O2),organization(abc)"));
        Assert.assertTrue(ruleString.contains("_mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_relation(S2, E2, _clause),_similar(abc, S2),event(E2, headquarter, _, _),organization(abc)"));
        Assert.assertTrue(ruleString.contains("_mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_similar(abc, S2),event(E2, headquarter, S2, O2),organization(abc)"));
        Assert.assertTrue(ruleString.contains("_property(E2, borough, of, new_york_city),_property(E2, headquarter, _by, S2),_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, O2),organization(abc)"));
        Assert.assertTrue(ruleString.contains("_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_relation(S2, E2, _clause),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, _),organization(abc)"));
        Assert.assertTrue(ruleString.contains("_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, S2, O2),organization(abc)"));
        /*----------------  CONSTRAINT_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, _by, S2),_property(E2, headquarter, in, X2),_similar(abc, S2),event(E2, headquarter, _, O2)"));
        Assert.assertTrue(ruleString.contains("_mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_relation(S2, E2, _clause),_similar(abc, S2),event(E2, headquarter, _, _)"));
        Assert.assertTrue(ruleString.contains("_mod(borough, X2),_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_similar(abc, S2),event(E2, headquarter, S2, O2)"));
        Assert.assertTrue(ruleString.contains("_property(E2, borough, of, new_york_city),_property(E2, headquarter, _by, S2),_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, O2)"));
        Assert.assertTrue(ruleString.contains("_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_relation(S2, E2, _clause),_similar(abc, S2),borough(X2, _),event(E2, headquarter, _, _)"));
        Assert.assertTrue(ruleString.contains("_property(E2, borough, of, new_york_city),_property(E2, headquarter, in, X2),_similar(abc, S2),borough(X2, _),event(E2, headquarter, S2, O2)"));
        /*----------------  ANSWER_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(borough, X2),_property(E2, headquarter, in, X2)"));
        Assert.assertTrue(ruleString.contains("_property(E2, headquarter, in, X2),borough(X2, _)"));
        /*----------------  BASE_CONSTRAINT  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(borough, X2)"));
        Assert.assertTrue(ruleString.contains("borough(X2, _)"));
    }

    @Test
    // On what streets is the ABC headquarters located?
    // located is regarded as an adjective (JJ) by the POS Tagger
    void TestSentenceFour() {
        String content = "On What streets is the ABC's headquarter located?";
        Question question = new Question(content);
        System.out.println(Sentence.DependenciesToString(question));
        List<Rule> rules = question.GenerateAllRules();
        LiteralType type = LiteralType.FACT;
        System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
        for(Rule rule : rules){
            if(type != rule.maxRuleQuality) {
                type = rule.maxRuleQuality;
                System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
            }
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        System.out.print("\n\n");
        List<String> ruleString = new ArrayList<>();
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(6, ruleString.size());
        /*----------------  FACT  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(street, X),_possess(abc, headquarter),_property(located, on, X),organization(abc)"));
        Assert.assertTrue(ruleString.contains("_possess(abc, headquarter),_property(located, on, X),organization(abc),street(X, _)"));
        /*----------------  CONSTRAINT_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(street, X),_property(located, on, X)"));
        Assert.assertTrue(ruleString.contains("_property(located, on, X),street(X, _)"));
        /*----------------  BASE_CONSTRAINT  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(street, X)"));
        Assert.assertTrue(ruleString.contains("street(X, _)"));
    }

    @Test
    // Disney-ABC Television Group is a subsidiary of what division of the Walt Disney Company?
    void TestSentenceFive() {
        String content = "Disney_ABC_Television_Group is a subsidiary of what division of The_Walt_Disney_Company?";
        Question question = new Question(content);
        System.out.println(Sentence.DependenciesToString(question));
        List<Rule> rules = question.GenerateAllRules();
        LiteralType type = LiteralType.FACT;
        System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
        for(Rule rule : rules){
            if(type != rule.maxRuleQuality) {
                type = rule.maxRuleQuality;
                System.out.println("/*----------------  " + type.toString() + "  ------------------*/");
            }
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        System.out.print("\n\n");
        List<String> ruleString = new ArrayList<>();
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        /*----------------  FACT  ------------------*/
        Assert.assertTrue(ruleString.contains("_is(disney_abc_television_group, subsidiary),_mod(division, X1),_property(E1, subsidiary, of, X1)"));
        Assert.assertTrue(ruleString.contains("_is(disney_abc_television_group, subsidiary),_property(E1, subsidiary, of, X1),division(X1, _)"));
        /*----------------  CONSTRAINT_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(division, X1),_property(E1, subsidiary, of, X1)"));
        Assert.assertTrue(ruleString.contains("_property(E1, subsidiary, of, X1),division(X1, _)"));
        /*----------------  BASE_CONSTRAINT  ------------------*/
        Assert.assertTrue(ruleString.contains("_mod(division, X1)"));
        Assert.assertTrue(ruleString.contains("division(X1, _)"));
    }
}
