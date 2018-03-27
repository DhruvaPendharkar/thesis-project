import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dhruv on 3/7/2018.
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
        String content = "What was Maria_Curie the first female recipient of?";
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
        String sentence = question.sentenceString.replaceAll("'", "");
        System.out.println(String.format("question('%s').", sentence));
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(0, ruleString.size());
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
        String sentence = question.sentenceString.replaceAll("'", "");
        System.out.println(String.format("question('%s').", sentence));
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // Who was one of the most famous people born in Warsaw?
    void TestSentenceThree() {
        String content = "Who was one of the most famous people born in Warsaw?";
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
        String sentence = question.sentenceString.replaceAll("'", "");
        System.out.println(String.format("question('%s').", sentence));
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // Who was Frederic Chopin?
    void TestSentenceFour() {
        String content = "Who was Frederic Chopin?";
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
        String sentence = question.sentenceString.replaceAll("'", "");
        System.out.println(String.format("question('%s').", sentence));
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // How old was Chopin when he moved to Warsaw with his family?
    void TestSentenceFive() {
        String content = "How old was Chopin, when chopin moved to Warsaw with chopin's family?";
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
        String sentence = question.sentenceString.replaceAll("'", "");
        System.out.println(String.format("question('%s').", sentence));
        for(Rule rule : rules){
            System.out.println(String.format("%s.", rule.toString()));
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(0, ruleString.size());
    }
}
