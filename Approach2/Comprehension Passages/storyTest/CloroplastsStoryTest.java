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
public class CloroplastsStoryTest {
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
    // Chloroplasts's main role is to conduct photosynthesis, where the photosynthetic pigment, chlorophyll, captures
    // the energy from sunlight and converts the energy and stores the energy in the energy-storage molecules ATP and
    // NADPH, while freeing oxygen from water.
    void TestSentenceOne() {
        String content = "Chloroplasts's main role is to conduct photosynthesis, where the photosynthetic pigment, " +
        "chlorophyll, captures the energy from sunlight and converts the energy, and stores the energy in the " +
        "energy-storage molecules ATP and NADPH, while freeing oxygen from water.";
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

        Assert.assertEquals(25, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(pigment, chlorophyll)"));
        Assert.assertTrue(ruleString.contains("_mod(atp, energy_storage)"));
        Assert.assertTrue(ruleString.contains("_mod(capture, where)"));
        Assert.assertTrue(ruleString.contains("_mod(pigment, photosynthetic)"));
        Assert.assertTrue(ruleString.contains("_mod(role, main)"));
        Assert.assertTrue(ruleString.contains("_possess(chloroplast, role)"));
        Assert.assertTrue(ruleString.contains("_property(capture, from(sunlight))"));
        Assert.assertTrue(ruleString.contains("_property(energy, in(atp))"));
        Assert.assertTrue(ruleString.contains("_property(energy, in(nadph))"));
        Assert.assertTrue(ruleString.contains("_property(free, from(water))"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 4, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(3, store, _conj)"));
        Assert.assertTrue(ruleString.contains("event(1, be, main_role, null)"));
        Assert.assertTrue(ruleString.contains("event(1, be, role, null)"));
        Assert.assertTrue(ruleString.contains("event(2, conduct, main_role, photosynthesis)"));
        Assert.assertTrue(ruleString.contains("event(2, conduct, role, photosynthesis)"));
        Assert.assertTrue(ruleString.contains("event(3, capture, chlorophyll, null)"));
        Assert.assertTrue(ruleString.contains("event(3, capture, photosynthetic_pigment, energy)"));
        Assert.assertTrue(ruleString.contains("event(3, capture, pigment, energy)"));
        Assert.assertTrue(ruleString.contains("event(4, convert, chlorophyll, null)"));
        Assert.assertTrue(ruleString.contains("event(4, convert, photosynthetic_pigment, energy)"));
        Assert.assertTrue(ruleString.contains("event(4, convert, pigment, energy)"));
        Assert.assertTrue(ruleString.contains("event(5, free, null, oxygen)"));
        Assert.assertTrue(ruleString.contains("pigment(chlorophyll)"));
    }

    @Test
    // Chloroplasts then use the ATP and NADPH to make organic molecules from carbon_dioxide in a process known as the
    // Calvin_Cycle.
    void TestSentenceTwo() {
        String content = "Chloroplasts then use the ATP and NADPH to make organic molecules from carbon_dioxide in a " +
        "process known as the Calvin_Cycle.";
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

        Assert.assertEquals(12, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(molecule, organic)"));
        Assert.assertTrue(ruleString.contains("_mod(use, then)"));
        Assert.assertTrue(ruleString.contains("_property(know, as(calvin_cycle))"));
        Assert.assertTrue(ruleString.contains("_property(make, from(carbon_dioxide))"));
        Assert.assertTrue(ruleString.contains("_property(make, in(process))"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(process, 3, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, use, chloroplast, atp)"));
        Assert.assertTrue(ruleString.contains("event(1, use, chloroplast, nadph)"));
        Assert.assertTrue(ruleString.contains("event(2, make, null, molecule)"));
        Assert.assertTrue(ruleString.contains("event(2, make, null, organic_molecule)"));
        Assert.assertTrue(ruleString.contains("event(3, know, null, null)"));
    }

    @Test
    // Chloroplasts carry out a number of other functions, including fatty_acid_synthesis, amino_acid_synthesis, and
    // the immune_response in plants.
    void TestSentenceThree() {
        String content = "Chloroplasts carry out a number_of_functions, like fatty_acid_synthesis, " +
        "amino_acid_synthesis, and the immune_response in plants.";
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
        Assert.assertTrue(ruleString.contains("_mod(fatty_acid_synthesis, like)"));
        Assert.assertTrue(ruleString.contains("_property(carry, out(amino_acid_synthesis))"));
        Assert.assertTrue(ruleString.contains("_property(carry, out(fatty_acid_synthesis))"));
        Assert.assertTrue(ruleString.contains("_property(carry, out(immune_response))"));
        Assert.assertTrue(ruleString.contains("_property(carry, out(number_of_functions))"));
        Assert.assertTrue(ruleString.contains("_property(immune_response, in(plant))"));
        Assert.assertTrue(ruleString.contains("event(1, carry, chloroplast, null)"));
    }

    @Test
    // The number of chloroplasts per cell varies from 1 in algae up to 100 in plants like, Arabidopsis and wheat.
    void TestSentenceFour() {
        String content = "The number_of_chloroplasts, per cell, varies from 1 in algae, up_to 100 in plants such as " +
        "Arabidopsis and wheat.";
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
        Assert.assertTrue(ruleString.contains("_is(plant, arabidopsis)"));
        Assert.assertTrue(ruleString.contains("_is(plant, wheat)"));
        Assert.assertTrue(ruleString.contains("_mod(up_to, 100)"));
        Assert.assertTrue(ruleString.contains("_property(number_of_chloroplasts, per(cell))"));
        Assert.assertTrue(ruleString.contains("_property(up_to, in(plant))"));
        Assert.assertTrue(ruleString.contains("_property(vary, from(1))"));
        Assert.assertTrue(ruleString.contains("event(1, vary, number_of_chloroplasts, null)"));
        Assert.assertTrue(ruleString.contains("plant(arabidopsis)"));
        Assert.assertTrue(ruleString.contains("plant(wheat)"));
    }
}