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
public class OxygenStoryTest {
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
    // Oxygen is a chemical element with symbol O and atomic number 8.
    void TestSentenceOne() {
        String content = "Oxygen is a chemical element with symbol_O and atomic_number 8.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(oxygen, chemical_element)"));
        Assert.assertTrue(ruleString.contains("_is(oxygen, element)"));
        Assert.assertTrue(ruleString.contains("_mod(atomic_number, 8)"));
        Assert.assertTrue(ruleString.contains("_mod(element, chemical)"));
        Assert.assertTrue(ruleString.contains("_property(element, with('8_atomic_number'))"));
        Assert.assertTrue(ruleString.contains("_property(element, with(symbol_o))"));
        Assert.assertTrue(ruleString.contains("element(oxygen)"));
    }

    @Test
    // Oxygen is a member of the chalcogen group on the periodic table and is a highly reactive nonmetal
    // and oxidizing agent that readily forms compounds, like oxides, with most elements.
    void TestSentenceTwo() {
        String content = "Oxygen is a member of the chalcogen_group on the periodic_table and is a highly " +
        "reactive nonmetal, and oxidizing agent that readily forms compounds, like oxides, with most elements.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(16, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(compound, oxide)"));
        Assert.assertTrue(ruleString.contains("_is(oxygen, member)"));
        Assert.assertTrue(ruleString.contains("_is(oxygen, nonmetal)"));
        Assert.assertTrue(ruleString.contains("_is(oxygen, reactive_nonmetal)"));
        Assert.assertTrue(ruleString.contains("_mod(element, most)"));
        Assert.assertTrue(ruleString.contains("_mod(form, readily)"));
        Assert.assertTrue(ruleString.contains("_mod(oxide, like)"));
        Assert.assertTrue(ruleString.contains("_property(chalcogen_group, on(periodic_table))"));
        Assert.assertTrue(ruleString.contains("_property(member, of(chalcogen_group))"));
        Assert.assertTrue(ruleString.contains("_property(oxide, with(element))"));
        Assert.assertTrue(ruleString.contains("compound(oxide)"));
        Assert.assertTrue(ruleString.contains("event(3, oxidize, oxygen, agent)"));
        Assert.assertTrue(ruleString.contains("event(4, form, compound, null)"));
        Assert.assertTrue(ruleString.contains("event(4, form, oxide, null)"));
        Assert.assertTrue(ruleString.contains("member(oxygen)"));
        Assert.assertTrue(ruleString.contains("nonmetal(oxygen)"));
    }

    @Test
    // By mass, oxygen is the third-most abundant element in the universe, after hydrogen and helium.
    void TestSentenceThree() {
        String content = "By mass, oxygen is the third-most abundant element in the universe, after hydrogen " +
        "and helium.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(9, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(oxygen, element)"));
        Assert.assertTrue(ruleString.contains("_is(oxygen, third_most_abundant_element)"));
        Assert.assertTrue(ruleString.contains("_mod(element, abundant)"));
        Assert.assertTrue(ruleString.contains("_mod(element, third_most)"));
        Assert.assertTrue(ruleString.contains("_property(element, after(hydrogen))"));
        Assert.assertTrue(ruleString.contains("_property(element, by(mass))"));
        Assert.assertTrue(ruleString.contains("_property(element, after(helium))"));
        Assert.assertTrue(ruleString.contains("_property(element, in(universe))"));
        Assert.assertTrue(ruleString.contains("element(oxygen)"));
    }

    @Test
    // At standard temperature and pressure, two atoms of the element bind to form dioxygen, a colorless and
    // odorless diatomic gas with the formula O2.
    void TestSentenceFour() {
        String content = "At standard temperature and pressure, two atoms of oxygen bind to form dioxygen, " +
        "a colorless and odorless diatomic gas with the formula_O2.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(15, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(dioxygen, gas)"));
        Assert.assertTrue(ruleString.contains("_mod(atom, two)"));
        Assert.assertTrue(ruleString.contains("_mod(gas, colorless)"));
        Assert.assertTrue(ruleString.contains("_mod(gas, diatomic)"));
        Assert.assertTrue(ruleString.contains("_mod(gas, odorless)"));
        Assert.assertTrue(ruleString.contains("_mod(temperature, standard)"));
        Assert.assertTrue(ruleString.contains("_property(atom, of(oxygen))"));
        Assert.assertTrue(ruleString.contains("_property(bind, at(temperature))"));
        Assert.assertTrue(ruleString.contains("_property(bind, at(pressure))"));
        Assert.assertTrue(ruleString.contains("_property(form, with('formula_o2'))"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(1, bind, atom, null)"));
        Assert.assertTrue(ruleString.contains("event(2, form, atom, dioxygen)"));
        Assert.assertTrue(ruleString.contains("event(2, form, null, dioxygen)"));
        Assert.assertTrue(ruleString.contains("gas(dioxygen)"));
    }

    @Test
    // Diatomic oxygen gas constitutes 20.8% of the Earth's atmosphere.
    void TestSentenceFive() {
        String content = "Diatomic oxygen_gas constitutes 20.8 percent of the Earth's atmosphere.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(oxygen_gas, diatomic)"));
        Assert.assertTrue(ruleString.contains("_mod(percent, '20.8')"));
        Assert.assertTrue(ruleString.contains("_possess(earth, atmosphere)"));
        Assert.assertTrue(ruleString.contains("_property(percent, of(atmosphere))"));
        Assert.assertTrue(ruleString.contains("event(1, constitute, diatomic_oxygen_gas, percent)"));
        Assert.assertTrue(ruleString.contains("event(1, constitute, diatomic_oxygen_gas, percent_of_atmosphere)"));
        Assert.assertTrue(ruleString.contains("event(1, constitute, oxygen_gas, percent)"));
        Assert.assertTrue(ruleString.contains("event(1, constitute, oxygen_gas, percent_of_atmosphere)"));
    }

    @Test
    // However, monitoring of atmospheric oxygen levels show a global downward trend, because of
    // fossil-fuel burning.
    void TestSentenceSix() {
        String content = "Monitoring of atmospheric oxygen_levels show a global downward " +
        "trend, because of the burning of fossil-fuel.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(7, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(oxygen_levels, atmospheric)"));
        Assert.assertTrue(ruleString.contains("_mod(trend, downward)"));
        Assert.assertTrue(ruleString.contains("_mod(trend, global)"));
        Assert.assertTrue(ruleString.contains("_property(burning, of(fossil_fuel))"));
        Assert.assertTrue(ruleString.contains("_property(monitoring, of(oxygen_levels))"));
        Assert.assertTrue(ruleString.contains("event(1, show, monitoring, global_downward_trend)"));
        Assert.assertTrue(ruleString.contains("event(1, show, monitoring, trend)"));
    }

    @Test
    // Oxygen is the most abundant element by mass in the Earth's crust as part of oxide compounds such as silicon
    // dioxide, making up almost half of the crust's mass.
    void TestSentenceSeven() {
        String content = "Oxygen is the most abundant element by mass in the Earth's crust as part of oxide_compounds, " +
        "such as silicon_dioxide, making up almost half of the crust's mass.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(13, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(oxygen, abundant_element)"));
        Assert.assertTrue(ruleString.contains("_is(oxygen, element)"));
        Assert.assertTrue(ruleString.contains("_mod(element, abundant)"));
        Assert.assertTrue(ruleString.contains("_possess(crust, mass)"));
        Assert.assertTrue(ruleString.contains("_possess(earth, crust)"));
        Assert.assertTrue(ruleString.contains("_property(crust, as(part))"));
        Assert.assertTrue(ruleString.contains("_property(element, by(mass))"));
        Assert.assertTrue(ruleString.contains("_property(half, of(mass))"));
        Assert.assertTrue(ruleString.contains("_property(mass, in(crust))"));
        Assert.assertTrue(ruleString.contains("_property(part, of(oxide_compounds))"));
        Assert.assertTrue(ruleString.contains("element(oxygen)"));
        Assert.assertTrue(ruleString.contains("event(2, make, null, half)"));
        Assert.assertTrue(ruleString.contains("event(2, make, null, half_of_mass)"));
    }
}