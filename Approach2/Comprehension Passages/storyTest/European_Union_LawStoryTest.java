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
        "which have direct_effect or indirect_effect on the laws of European_Union member states.";
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

        Assert.assertEquals(11, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(body, regulations_and_directives)"));
        Assert.assertTrue(ruleString.contains("_is(european_union_law, body)"));
        Assert.assertTrue(ruleString.contains("_mod(state, european_union)"));
        Assert.assertTrue(ruleString.contains("_property(1, body, of, legislation)"));
        Assert.assertTrue(ruleString.contains("_property(1, body, of, treaty)"));
        Assert.assertTrue(ruleString.contains("_property(1, indirect_effect, on, law)"));
        Assert.assertTrue(ruleString.contains("_property(1, law, of, state)"));
        Assert.assertTrue(ruleString.contains("body(european_union_law)"));
        Assert.assertTrue(ruleString.contains("body(regulations_and_directives)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, have, null, null)"));
    }

    @Test
    // The three sources of European_Union_Law are primary_law, secondary_law and supplementary_law.
    void TestSentenceTwo_Failed() {
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

        Assert.assertEquals(9, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(source, primary_law)"));
        Assert.assertTrue(ruleString.contains("_is(source, secondary_law)"));
        Assert.assertTrue(ruleString.contains("_is(source, supplementary_law)"));
        Assert.assertTrue(ruleString.contains("_mod(source, three)"));
        Assert.assertTrue(ruleString.contains("source(primary_law)"));
        Assert.assertTrue(ruleString.contains("source(secondary_law)"));
        Assert.assertTrue(ruleString.contains("source(supplementary_law)"));
        Assert.assertTrue(ruleString.contains("_property(source, of, european_union_law)"));
        Assert.assertTrue(ruleString.contains("number(three)"));
    }

    @Test
    // The main sources of primary_law are the Treaties establishing the European_Union.
    void TestSentenceThree_Failed() {
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

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(main_source, treaty)"));
        Assert.assertTrue(ruleString.contains("_is(source, treaty)"));
        Assert.assertTrue(ruleString.contains("_mod(source, main)"));
        Assert.assertTrue(ruleString.contains("_property(source, of, primary_law)"));
        Assert.assertTrue(ruleString.contains("_relation(treaty, 2, _clause)"));
        Assert.assertTrue(ruleString.contains("event(2, establish, null, european_union)"));
        Assert.assertTrue(ruleString.contains("source(treaty)"));
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

        Assert.assertEquals(9, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(source, secondary)"));
        Assert.assertTrue(ruleString.contains("_property(3, base, on, treaty)"));
        Assert.assertTrue(ruleString.contains("event(1, 'include', secondary_source, directive)"));
        Assert.assertTrue(ruleString.contains("event(1, 'include', secondary_source, regulation)"));
        Assert.assertTrue(ruleString.contains("event(1, 'include', source, directive)"));
        Assert.assertTrue(ruleString.contains("event(1, 'include', source, regulation)"));
        Assert.assertTrue(ruleString.contains("event(2, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(3, base, null, directive)"));
        Assert.assertTrue(ruleString.contains("event(3, base, null, regulation)"));
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

        Assert.assertEquals(13, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(compose, principally)"));
        Assert.assertTrue(ruleString.contains("_property(2, compose, of, council_of_the_european_union)"));
        Assert.assertTrue(ruleString.contains("_property(2, compose, of, european_parliament)"));
        Assert.assertTrue(ruleString.contains("_property(3, establish, under, treaty)"));
        Assert.assertTrue(ruleString.contains("_property(2, legislature, of, european_union)"));
        Assert.assertTrue(ruleString.contains("_property(5, set, in, treaty)"));
        Assert.assertTrue(ruleString.contains("_relation(objective, 5, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, compose, null, legislature)"));
        Assert.assertTrue(ruleString.contains("event(3, establish, council_of_the_european_union, null)"));
        Assert.assertTrue(ruleString.contains("event(3, establish, european_parliament, null)"));
        Assert.assertTrue(ruleString.contains("event(4, pursue, null, objective)"));
        Assert.assertTrue(ruleString.contains("event(5, set, null, null)"));
    }
}