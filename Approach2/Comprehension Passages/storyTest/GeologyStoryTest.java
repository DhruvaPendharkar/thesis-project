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
public class GeologyStoryTest {
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
    // Geology has three major types of rock namely, igneous, sedimentary, and metamorphic.
    void TestSentenceOne() {
        String content = "Geology has three major types of rock namely, igneous, sedimentary, and metamorphic.";
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
    // The rock cycle is an important concept in geology, which illustrates the relationships between these three
    // types of rock, and magma.
    void TestSentenceTwo() {
        String content = "The rock cycle is an important concept in geology, which illustrates the relationships " +
        "between these three types of rock, and magma.";
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
    // When a rock crystallizes from magma or lava, the rock is an igneous rock.
    void TestSentenceThree() {
        String content = "When a rock crystallizes from magma or lava, the rock is an igneous rock.";
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
    // This rock can be weathered and eroded, and then redeposited and lithified into a sedimentary rock, or be turned
    // into a metamorphic rock due to heat and pressure that change the mineral content of the rock which gives it a
    // characteristic fabric.
    void TestSentenceFour() {
        String content = "This rock can be weathered and eroded, and then redeposited and lithified into a sedimentary " +
        "rock, or be turned into a metamorphic rock due to heat and pressure that change the mineral content of the rock " +
        "which gives it a characteristic fabric.";
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
    // The sedimentary rock can then be subsequently turned into a metamorphic rock due to heat and pressure and is
    // then weathered, eroded, deposited, and lithified, ultimately becoming a sedimentary rock.
    void TestSentenceFive() {
        String content = "The sedimentary rock can then be subsequently turned into a metamorphic rock due to heat and " +
        "pressure and is then weathered, eroded, deposited, and lithified, ultimately becoming a sedimentary rock.";
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
    // Sedimentary rock may also be re-eroded and redeposited, and metamorphic rock may also undergo
    // additional metamorphism.
    void TestSentenceSix() {
        String content = "Sedimentary rock may also be re-eroded and redeposited, and metamorphic rock may also undergo " +
        "additional metamorphism.";
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
    // All three types of rocks may be re-melted.
    void TestSentenceSeven() {
        String content = "All three types of rocks may be re-melted.";
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
    // When the rocks are melted, a new magma is formed, from which an igneous rock may once again crystallize.
    void TestSentenceEight() {
        String content = "When the rocks are melted, a new magma is formed, from which an igneous rock may once again " +
        "crystallize.";
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