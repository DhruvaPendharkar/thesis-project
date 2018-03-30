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
    // Geology has three major types of rocks namely, igneous, sedimentary, and metamorphic.
    void TestSentenceOne_Failed() {
        String content = "Geology has three major types of rocks namely, igneous, sedimentary, and metamorphic.";
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
    }

    @Test
    // The rock cycle is an important concept in geology, which illustrates the relationships between these three
    // types of rock, and magma.
    void TestSentenceTwo() {
        String content = "The rock_cycle is an important concept in geology, which illustrates the relationships " +
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

        Assert.assertEquals(14, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(rock_cycle, concept)"));
        Assert.assertTrue(ruleString.contains("_is(rock_cycle, important_concept)"));
        Assert.assertTrue(ruleString.contains("_mod(concept, important)"));
        Assert.assertTrue(ruleString.contains("_mod(type, three)"));
        Assert.assertTrue(ruleString.contains("_property(1, concept, in, geology)"));
        Assert.assertTrue(ruleString.contains("_property(2, relationship, between, three_type)"));
        Assert.assertTrue(ruleString.contains("_property(2, relationship, of, rock)"));
        Assert.assertTrue(ruleString.contains("concept(rock_cycle)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, illustrate, geology, magma)"));
        Assert.assertTrue(ruleString.contains("event(2, illustrate, geology, relationship)"));
        Assert.assertTrue(ruleString.contains("event(2, illustrate, geology, relationship_between_type)"));
        Assert.assertTrue(ruleString.contains("event(2, illustrate, geology, relationship_of_rock)"));
        Assert.assertTrue(ruleString.contains("number(three)"));
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

        Assert.assertEquals(9, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(rock, igneous_rock)"));
        Assert.assertTrue(ruleString.contains("_is(rock, rock)"));
        Assert.assertTrue(ruleString.contains("_mod(crystallize, when)"));
        Assert.assertTrue(ruleString.contains("_mod(rock, igneous)"));
        Assert.assertTrue(ruleString.contains("_property(1, crystallize, from, lava)"));
        Assert.assertTrue(ruleString.contains("_property(1, crystallize, from, magma)"));
        Assert.assertTrue(ruleString.contains("event(1, crystallize, rock, null)"));
        Assert.assertTrue(ruleString.contains("event(2, be, null, null)"));
        Assert.assertTrue(ruleString.contains("rock(rock)"));
    }

    @Test
    // This rock can be weathered and eroded, and then redeposited and lithified into a sedimentary rock, or be turned
    // into a metamorphic rock due to heat and pressure that change the mineral content of the rock which gives it a
    // characteristic fabric.
    void TestSentenceFour_Failed() {
        String content = "This rock can be weathered and eroded, and then redeposited and lithified into a sedimentary " +
        "rock, or be turned into a metamorphic rock due to heat and pressure that change the mineral content of the rock " +
        "which gives the rock a characteristic fabric.";
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

        Assert.assertEquals(26, ruleString.size());
    }

    @Test
    // The sedimentary rock can then be subsequently turned into a metamorphic rock due to heat and pressure and is
    // then weathered, eroded, deposited, and lithified, ultimately becoming a sedimentary rock.
    void TestSentenceFive_Failed() {
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

        Assert.assertEquals(21, ruleString.size());
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

        Assert.assertEquals(13, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(rock, re_eroded)"));
        Assert.assertTrue(ruleString.contains("_is(sedimentary_rock, re_eroded)"));
        Assert.assertTrue(ruleString.contains("_mod(metamorphism, additional)"));
        Assert.assertTrue(ruleString.contains("_mod(rock, metamorphic)"));
        Assert.assertTrue(ruleString.contains("_mod(rock, sedimentary)"));
        Assert.assertTrue(ruleString.contains("_mod(undergo, also)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, redeposit, rock, null)"));
        Assert.assertTrue(ruleString.contains("event(2, redeposit, sedimentary_rock, null)"));
        Assert.assertTrue(ruleString.contains("event(3, undergo, metamorphic_rock, additional_metamorphism)"));
        Assert.assertTrue(ruleString.contains("event(3, undergo, metamorphic_rock, metamorphism)"));
        Assert.assertTrue(ruleString.contains("event(3, undergo, rock, additional_metamorphism)"));
        Assert.assertTrue(ruleString.contains("event(3, undergo, rock, metamorphism)"));
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

        Assert.assertEquals(5, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(type, re_melted)"));
        Assert.assertTrue(ruleString.contains("_mod(type, three)"));
        Assert.assertTrue(ruleString.contains("_property(1, type, of, rock)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("number(three)"));
    }

    @Test
    // When the rocks are melted, a new magma is formed, from which an igneous rock may once again crystallize.
    void TestSentenceEight() {
        String content = "When the rocks are melted, a new magma is formed, from the magma an igneous_rock may once again " +
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

        Assert.assertEquals(10, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(crystallize, again)"));
        Assert.assertTrue(ruleString.contains("_mod(magma, new)"));
        Assert.assertTrue(ruleString.contains("_mod(melt, when)"));
        Assert.assertTrue(ruleString.contains("_property(4, form, from, magma)"));
        Assert.assertTrue(ruleString.contains("_relation(4, 2, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, melt, null, rock)"));
        Assert.assertTrue(ruleString.contains("event(3, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(4, form, null, magma)"));
        Assert.assertTrue(ruleString.contains("event(5, crystallize, igneous_rock, null)"));
    }
}