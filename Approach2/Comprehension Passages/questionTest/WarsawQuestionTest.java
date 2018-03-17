import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dhruv on 3/13/2018.
 */
public class WarsawQuestionTest {

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
    // What was Maria Curie the first female recipient of?
    void TestSentenceOne() {
        String content = "Maria_Curie is the first female recipient of what?";
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

        Assert.assertEquals(2, ruleString.size());
        /*----------------  FACT  ------------------*/
        Assert.assertTrue(ruleString.contains("_is(maria_curie, recipient),_mod(recipient, female),_mod(recipient, first),_property(E1, recipient, of, X1)"));
        /*----------------  CONSTRAINT_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("_property(E1, recipient, of, X1)"));
    }

    @Test
    // What year was Casimir Pulaski born in Warsaw?
    void TestSentenceTwo() {
        String content = "What year was Casimir_Pulaski born in Warsaw?";
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

        Assert.assertEquals(4, ruleString.size());
        Assert.assertEquals(4, ruleString.size());
        /*----------------  FACT  ------------------*/
        Assert.assertTrue(ruleString.contains("_property(E2, bear, _, X2),_property(E2, bear, _by, S2),_property(E2, bear, in, warsaw),_similar(casimir_pulaski, O2),event(E2, bear, _, O2),time(T2),year(T2, X2)"));
        Assert.assertTrue(ruleString.contains("_property(E2, bear, _, X2),_property(E2, bear, in, warsaw),_similar(casimir_pulaski, O2),event(E2, bear, S2, O2),time(T2),year(T2, X2)"));
        /*----------------  ANSWER_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("_property(E2, bear, _, X2),time(T2),year(T2, X2)"));
        /*----------------  BASE_CONSTRAINT  ------------------*/
        Assert.assertTrue(ruleString.contains("time(T2),year(T2, X2)"));
    }

    @Test
    // Who was one of the most famous people born in Warsaw?
    void TestSentenceThree() {
        String content = "Who was one_of_the_most_famous people born in Warsaw?";
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

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // Who was Frederic Chopin
    void TestSentenceFour() {
        String content = "Who was Frederic_Chopin?";
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

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // How old was Chopin when he moved to Warsaw with his family?
    void TestSentenceFive() {
        String content = "How old was Chopin when Chopin moved, to Warsaw, with Chopin's family?";
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

        Assert.assertEquals(0, ruleString.size());
    }
}
