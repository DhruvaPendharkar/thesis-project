import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dhruv on 3/7/2018.
 */
public class NikolaTeslaQuestionTest {
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
    // In what year was Nikola Tesla born?
    void TestSentenceOne() {
        String content = "In what year was Nikola Tesla born?";
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
    // What was Nikola Tesla's ethnicity?
    void TestSentenceTwo() {
        String content = "What was Nikola Tesla's ethnicity?";
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
    // In what year did Tesla die?
    void TestSentenceThree() {
        String content = "In what year did Tesla die?";
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
    // When was Nikola Tesla born?
    void TestSentenceFour() {
        String content = "When was Nikola_Tesla born?";
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
        Assert.assertTrue(ruleString.contains("question('when was nikola_tesla born ?', 1, X2) :- _property(E2, bear, _by, S2),_similar(nikola_tesla, S2),event(E2, bear, _, O2),time(X2)"));
        Assert.assertTrue(ruleString.contains("question('when was nikola_tesla born ?', 1, X2) :- _relation(S2, E2, _clause),_similar(nikola_tesla, S2),event(E2, bear, _, _),time(X2)"));
        Assert.assertTrue(ruleString.contains("question('when was nikola_tesla born ?', 1, X2) :- _similar(nikola_tesla, S2),_start_date(S2, X2),time(X2)"));
        Assert.assertTrue(ruleString.contains("question('when was nikola_tesla born ?', 1, X2) :- _similar(nikola_tesla, S2),event(E2, bear, S2, O2),time(X2)"));
        /*----------------  ANSWER_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("question('when was nikola_tesla born ?', 3, X2) :- _start_date(S2, X2),time(X2)"));
        Assert.assertTrue(ruleString.contains("question('when was nikola_tesla born ?', 3, X2) :- time(X2)"));
    }

    @Test
    // When did Tesla die?
    void TestSentenceFive() {
        String content = "When did Tesla die?";
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
        Assert.assertTrue(ruleString.contains("question('when did tesla die ?', 1, X1) :- _end_date(S2, X1),_similar(tesla, S2),time(X1)"));
        Assert.assertTrue(ruleString.contains("question('when did tesla die ?', 1, X1) :- _property(E2, die, _by, S2),_similar(tesla, S2),event(E2, die, _, O2),time(X1)"));
        Assert.assertTrue(ruleString.contains("question('when did tesla die ?', 1, X1) :- _relation(S2, E2, _clause),_similar(tesla, S2),event(E2, die, _, _),time(X1)"));
        Assert.assertTrue(ruleString.contains("question('when did tesla die ?', 1, X1) :- _similar(tesla, S2),event(E2, die, S2, O2),time(X1)"));
        /*----------------  ANSWER_QUERY  ------------------*/
        Assert.assertTrue(ruleString.contains("question('when did tesla die ?', 3, X1) :- _end_date(S2, X1),time(X1)"));
        Assert.assertTrue(ruleString.contains("question('when did tesla die ?', 3, X1) :- time(X1)"));
    }

    //@Test
    // What is Tesla's home country?
    void TestSentenceSix() {
        String content = "What is Tesla's home country?";
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
    // What does AC stand for?
    void TestSentenceSeven() {
        String content = "What does AC stand for?";
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
