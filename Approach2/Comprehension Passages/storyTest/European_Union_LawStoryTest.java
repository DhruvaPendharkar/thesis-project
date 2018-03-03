import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

/**
 * Created by dhruv on 2/19/2018.
 */
public class European_Union_LawStoryTest {
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
    // European_Union_Law is a body of treaties and legislation, such as Regulations_and_Directives, which have direct
    // effect or indirect effect on the laws of European_Union member states.
    void TestSentenceOne() {
        String content = "European_Union_Law is a body of treaties and legislation, such as Regulations_and_Directives, " +
        "which have direct effect or indirect effect on the laws of European_Union member states.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // The three sources of European_Union_Law are primary_law, secondary_law and supplementary_law.
    void TestSentenceTwo() {
        String content = "The three sources of European_Union_Law are primary_law, secondary_law and supplementary_law.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // The main sources of primary_law are the Treaties establishing the European_Union.
    void TestSentenceThree() {
        String content = "The main sources of primary_law are the Treaties establishing the European_Union.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // Secondary sources include regulations and directives, which are based on the Treaties.
    void TestSentenceFour() {
        String content = "Secondary sources include regulations and directives, which are based on the Treaties.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }

    @Test
    // The legislature of the European_Union is principally composed of the European_Parliament and the
    // Council_of_the_European_Union, which under the Treaties may establish secondary_law to pursue the objective set
    // out in the Treaties.
    void TestSentenceFive() {
        String content = "The legislature of the European_Union is principally composed of the European_Parliament and " +
        "the Council_of_the_European_Union, which under the Treaties may establish secondary_law to pursue the " +
        "objective set out in the Treaties.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        for(Rule rule : rulesSet){
            System.out.println(String.format("Assert.assertTrue(ruleString.contains(\"%s\"));", rule.toString()));
        }

        Assert.assertEquals(0, ruleString.size());
    }
}