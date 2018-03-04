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
public class ImmuneSystemStoryTest {
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
    // The immune_system is a system of many biological structures and processes within an organism that protects
    // against disease.
    void TestSentenceOne() {
        String content = "The immune_system is a system of many biological structures and processes within an organism " +
        "that protects against disease.";
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
        Assert.assertTrue(ruleString.contains("_is(immune_system, system)"));
        Assert.assertTrue(ruleString.contains("_mod(structure, biological)"));
        Assert.assertTrue(ruleString.contains("_mod(structure, many)"));
        Assert.assertTrue(ruleString.contains("_property(protect, against(disease))"));
        Assert.assertTrue(ruleString.contains("_property(structure, within(organism))"));
        Assert.assertTrue(ruleString.contains("_property(system, of(process))"));
        Assert.assertTrue(ruleString.contains("_property(system, of(structure))"));
        Assert.assertTrue(ruleString.contains("event(2, protect, organism, null)"));
        Assert.assertTrue(ruleString.contains("system(immune_system)"));
    }

    @Test
    // To function properly, an immune_system must detect a wide variety of agents, known as pathogens, from viruses
    // to parasitic worms, and distinguish them from the organism's own healthy tissue.
    void TestSentenceTwo() {
        String content = "To function properly, an immune_system must detect a wide variety of agents, known as " +
        "pathogens, from viruses to parasitic worms, and distinguish pathogens from the organism's own healthy tissue.";
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

        Assert.assertEquals(19, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(function, properly)"));
        Assert.assertTrue(ruleString.contains("_mod(tissue, healthy)"));
        Assert.assertTrue(ruleString.contains("_mod(tissue, own)"));
        Assert.assertTrue(ruleString.contains("_mod(variety, wide)"));
        Assert.assertTrue(ruleString.contains("_mod(worm, parasitic)"));
        Assert.assertTrue(ruleString.contains("_possess(organism, tissue)"));
        Assert.assertTrue(ruleString.contains("_property(detect, from(virus))"));
        Assert.assertTrue(ruleString.contains("_property(detect, to(worm))"));
        Assert.assertTrue(ruleString.contains("_property(distinguish, from(tissue))"));
        Assert.assertTrue(ruleString.contains("_property(know, as(pathogen))"));
        Assert.assertTrue(ruleString.contains("_property(variety, of(agent))"));
        Assert.assertTrue(ruleString.contains("_relation(2, 4, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(agent, 3, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, function, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, detect, null, variety)"));
        Assert.assertTrue(ruleString.contains("event(2, detect, null, variety_of_agent)"));
        Assert.assertTrue(ruleString.contains("event(2, detect, null, wide_variety)"));
        Assert.assertTrue(ruleString.contains("event(3, know, null, null)"));
        Assert.assertTrue(ruleString.contains("event(4, distinguish, null, pathogen)"));
    }

    @Test
    // In many species, the immune_system can be classified into subsystems, such as the innate immune_system versus
    // the adaptive immune_system, or humoral immunity versus cell-mediated immunity.
    void TestSentenceThree() {
        String content = "In many species, the immune_system can be classified into subsystems, such as the " +
        "innate_immune_system versus the adaptive_immune_system, or humoral_immunity versus cell_mediated_immunity.";
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
        Assert.assertTrue(ruleString.contains("_is(subsystem, adaptive_immune_system)"));
        Assert.assertTrue(ruleString.contains("_is(subsystem, cell_mediated_immunity)"));
        Assert.assertTrue(ruleString.contains("_is(subsystem, humoral_immunity)"));
        Assert.assertTrue(ruleString.contains("_is(subsystem, innate_immune_system)"));
        Assert.assertTrue(ruleString.contains("_mod(species, many)"));
        Assert.assertTrue(ruleString.contains("_property(classify, in(species))"));
        Assert.assertTrue(ruleString.contains("_property(classify, into(subsystem))"));
        Assert.assertTrue(ruleString.contains("_property(innate_immune_system, versus(adaptive_immune_system))"));
        Assert.assertTrue(ruleString.contains("_property(subsystem, versus(cell_mediated_immunity))"));
        Assert.assertTrue(ruleString.contains("event(2, classify, null, immune_system)"));
        Assert.assertTrue(ruleString.contains("subsystem(humoral_immunity)"));
        Assert.assertTrue(ruleString.contains("subsystem(innate_immune_system)"));
        Assert.assertTrue(ruleString.contains("subsystem(adaptive_immune_system)"));
        Assert.assertTrue(ruleString.contains("subsystem(cell_mediated_immunity)"));
    }

    @Test
    // In humans, the blood–brain barrier, blood–cerebrospinal_fluid barrier, and similar fluid–brain barriers separate
    // the peripheral immune_system from the neuroimmune_system, which protects the brain.
    void TestSentenceFour() {
        String content = "In humans, the blood–brain barrier, blood–cerebrospinal_fluid barrier, and similar fluid–brain " +
        "barriers separate the peripheral immune_system from the neuroimmune_system, which protects the brain.";
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
        Assert.assertTrue(ruleString.contains("_is(barrier, blood)"));
        Assert.assertTrue(ruleString.contains("_mod(fluid, similar)"));
        Assert.assertTrue(ruleString.contains("_mod(immune_system, peripheral)"));
        Assert.assertTrue(ruleString.contains("_property(cerebrospinal_fluid, in(human))"));
        Assert.assertTrue(ruleString.contains("_property(separate, from(neuroimmune_system))"));
        Assert.assertTrue(ruleString.contains("barrier(blood)"));
        Assert.assertTrue(ruleString.contains("event(1, separate, barrier, immune_system)"));
        Assert.assertTrue(ruleString.contains("event(1, separate, barrier, peripheral_immune_system)"));
        Assert.assertTrue(ruleString.contains("event(2, protect, neuroimmune_system, brain)"));
    }
}