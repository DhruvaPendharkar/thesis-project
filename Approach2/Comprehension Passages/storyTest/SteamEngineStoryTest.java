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
public class SteamEngineStoryTest {
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
    // Steam engines are external combustion engines, where the working fluid is separate from the combustion
    // products.
    void TestSentenceOne() {
        String content = "Steam_engines are external combustion_engines, where the working fluid is separate " +
        "from the combustion products.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(9, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(combustion_engines, external)"));
        Assert.assertTrue(ruleString.contains("_is(steam_engines, combustion_engines)"));
        Assert.assertTrue(ruleString.contains("_is(steam_engines, external_combustion_engines)"));
        Assert.assertTrue(ruleString.contains("_mod(fluid, working)"));
        Assert.assertTrue(ruleString.contains("_property(separate, from, product)"));
        Assert.assertTrue(ruleString.contains("_is(fluid, separate)"));
        Assert.assertTrue(ruleString.contains("separate(fluid)"));
        Assert.assertTrue(ruleString.contains("_is(working_fluid, separate)"));
        Assert.assertTrue(ruleString.contains("separate(working_fluid)"));
    }

    @Test
    // Non-combustion heat sources such as solar power, nuclear power or geothermal energy may be used.
    void TestSentenceTwo() {
        String content = "Non-combustion heat sources such as solar power, nuclear power or geothermal " +
        "energy may be used.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(20, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(non_combustion_source, energy)"));
        Assert.assertTrue(ruleString.contains("_is(non_combustion_source, geothermal_energy)"));
        Assert.assertTrue(ruleString.contains("_is(non_combustion_source, nuclear_power)"));
        Assert.assertTrue(ruleString.contains("_is(non_combustion_source, power)"));
        Assert.assertTrue(ruleString.contains("_is(non_combustion_source, solar_power)"));
        Assert.assertTrue(ruleString.contains("_is(source, energy)"));
        Assert.assertTrue(ruleString.contains("_is(source, geothermal_energy)"));
        Assert.assertTrue(ruleString.contains("_is(source, nuclear_power)"));
        Assert.assertTrue(ruleString.contains("_is(source, power)"));
        Assert.assertTrue(ruleString.contains("_is(source, solar_power)"));
        Assert.assertTrue(ruleString.contains("_mod(energy, geothermal)"));
        Assert.assertTrue(ruleString.contains("_mod(power, nuclear)"));
        Assert.assertTrue(ruleString.contains("_mod(power, solar)"));
        Assert.assertTrue(ruleString.contains("_mod(source, non_combustion)"));
        Assert.assertTrue(ruleString.contains("event(2, use, null, source)"));
        Assert.assertTrue(ruleString.contains("source(energy)"));
        Assert.assertTrue(ruleString.contains("source(geothermal_energy)"));
        Assert.assertTrue(ruleString.contains("source(nuclear_power)"));
        Assert.assertTrue(ruleString.contains("source(power)"));
        Assert.assertTrue(ruleString.contains("source(solar_power)"));
    }

    @Test
    // The ideal thermodynamic cycle used to analyze this process is called the Rankine cycle.
    void TestSentenceThree() {
        String content = "The ideal thermodynamic cycle used to analyze this process is called " +
        "the Rankine cycle.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(cycle, ideal)"));
        Assert.assertTrue(ruleString.contains("_mod(cycle, thermodynamic)"));
        Assert.assertTrue(ruleString.contains("_relation(cycle, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, use, null, null)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(2, analyze, null, process)"));
        Assert.assertTrue(ruleString.contains("_mod(cycle, rankine)"));
    }

    @Test
    // In the cycle, water is heated and transforms into steam within a boiler operating at a high pressure.
    void TestSentenceFour() {
        String content = "In the Rankine cycle, water is heated and transforms into steam within a boiler operating " +
        "at a high pressure.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(9, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(cycle, rankine)"));
        Assert.assertTrue(ruleString.contains("event(2, heat, water, null)"));
        Assert.assertTrue(ruleString.contains("_property(heat, in, cycle)"));
        Assert.assertTrue(ruleString.contains("_relation(2, 3, _conj)"));
        Assert.assertTrue(ruleString.contains("event(3, transform, water, null)"));
        Assert.assertTrue(ruleString.contains("_property(transform, into, steam)"));
        Assert.assertTrue(ruleString.contains("_property(transform, within, boiler)"));
        Assert.assertTrue(ruleString.contains("_property(operating, at, pressure)"));
        Assert.assertTrue(ruleString.contains("_mod(pressure, high)"));
    }

    @Test
    // When expanded through pistons or turbines, mechanical work is done.
    void TestSentenceFive() {
        String content = "When expanded through pistons or turbines, mechanical work is done.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("event(1, expand, null, null)"));
        Assert.assertTrue(ruleString.contains("_mod(expand, when)"));
        Assert.assertTrue(ruleString.contains("_property(expand, through, piston)"));
        Assert.assertTrue(ruleString.contains("_property(expand, through, turbine)"));
        Assert.assertTrue(ruleString.contains("_mod(work, mechanical)"));
        Assert.assertTrue(ruleString.contains("event(3, do, null, work)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 1, _clause)"));
    }

    @Test
    // The reduced-pressure steam is then condensed and pumped back into the boiler.
    void TestSentenceSix() {
        String content = "The reduced-pressure steam is then condensed and pumped " +
        "back into the boiler.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(steam, reduced_pressure)"));
        Assert.assertTrue(ruleString.contains("_is(steam, condensed)"));
        Assert.assertTrue(ruleString.contains("_is(reduced_pressure_steam, condensed)"));
        Assert.assertTrue(ruleString.contains("event(2, pump, steam, null)"));
        Assert.assertTrue(ruleString.contains("event(2, pump, reduced_pressure_steam, null)"));
        Assert.assertTrue(ruleString.contains("_property(pump, into, boiler)"));
    }
}