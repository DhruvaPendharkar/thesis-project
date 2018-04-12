import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dhruv on 3/7/2018.
 */
public class MartinLutherQuestionTest {
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

    //@Test
    // Of what nationality was Martin Luther?
    void TestSentenceOne() {
        String content = "Of what nationality was Martin Luther?";
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
    // When did Martin Luther die?
    void TestSentenceTwo() {
        String content = "When did Martin_Luther die?";
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

        Assert.assertEquals(6, ruleString.size());
        /*----------------  FACT  ------------------*/
        Assert.assertTrue(ruleString.contains("question('when did martin_luther die ?', certain, X1) :- _end_date(S2, X1),_similar(martin_luther, S2),time(X1)"));
        Assert.assertTrue(ruleString.contains("question('when did martin_luther die ?', certain, X1) :- _property(E2, die, _by, S2),_similar(martin_luther, S2),event(E2, die, _, O2),time(X1)"));
        Assert.assertTrue(ruleString.contains("question('when did martin_luther die ?', certain, X1) :- _relation(S2, E2, _clause),_similar(martin_luther, S2),event(E2, die, _, _),time(X1)"));
        Assert.assertTrue(ruleString.contains("question('when did martin_luther die ?', certain, X1) :- _similar(martin_luther, S2),event(E2, die, S2, O2),time(X1)"));
        /*----------------  ANSWER_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("question('when did martin_luther die ?', possible, X1) :- _end_date(S2, X1),time(X1)"));
        Assert.assertTrue(ruleString.contains("question('when did martin_luther die ?', possible, X1) :- time(X1)"));
    }

    //@Test
    // What organization's teaching did Luther reject?
    void TestSentenceThree() {
        String content = "What organization's teaching did Luther reject?";
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

    //@Test
    // What did the Church claim could be avoided with money?
    void TestSentenceFour() {
        String content = "What did the Church claim could be avoided with money?";
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

    //@Test
    // What did the Church do when Luther refused to retract his writings?
    void TestSentenceFive() {
        String content = "What did the Church do when Luther refused to retract his writings?";
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
