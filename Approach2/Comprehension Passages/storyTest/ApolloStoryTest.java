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
public class ApolloStoryTest {
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
    // The Apollo program, also known as Project Apollo, was the third United States human spaceflight program carried out by the
    // National Aeronautics and Space Administration (NASA), which accomplished landing the first humans on the Moon from 1969 to 1972.
    void TestSentenceOne() {
        String content = "The Apollo program, also known as Project_Apollo, was the third United_States human spaceflight program " +
        "carried out by the National_Aeronautics_and_Space_Administration (NASA), which accomplished landing the first humans on the " +
        "Moon from 1969 to 1972.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(29, ruleString.size());
        Assert.assertTrue(ruleString.contains("_abbreviation(nasa, national_aeronautics_and_space_administration)"));
        Assert.assertTrue(ruleString.contains("_is(apollo_program, program)"));
        Assert.assertTrue(ruleString.contains("_is(apollo_program, third_united_states_human_program)"));
        Assert.assertTrue(ruleString.contains("_is(program, program)"));
        Assert.assertTrue(ruleString.contains("_is(program, third_united_states_human_program)"));
        Assert.assertTrue(ruleString.contains("_mod(human, first)"));
        Assert.assertTrue(ruleString.contains("_mod(know, also)"));
        Assert.assertTrue(ruleString.contains("_mod(program, apollo)"));
        Assert.assertTrue(ruleString.contains("_mod(program, human)"));
        Assert.assertTrue(ruleString.contains("_mod(program, third)"));
        Assert.assertTrue(ruleString.contains("_mod(program, united_states)"));
        Assert.assertTrue(ruleString.contains("_property(3, carry, by, national_aeronautics_and_space_administration)"));
        Assert.assertTrue(ruleString.contains("_property(1, know, as, project_apollo)"));
        Assert.assertTrue(ruleString.contains("_property(5, landing, on, 'moon_from_1969_to_1972')"));
        Assert.assertTrue(ruleString.contains("_relation(4, 5, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_relation(program, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(program, 3, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, know, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(3, carry, null, null)"));
        Assert.assertTrue(ruleString.contains("event(4, accomplish, national_aeronautics_and_space_administration, null)"));
        Assert.assertTrue(ruleString.contains("event(5, landing, null, first_human)"));
        Assert.assertTrue(ruleString.contains("event(5, landing, null, human)"));
        Assert.assertTrue(ruleString.contains("organization(nasa)"));
        Assert.assertTrue(ruleString.contains("program(apollo_program)"));
        Assert.assertTrue(ruleString.contains("program(program)"));
        Assert.assertTrue(ruleString.contains("time('moon_from_1969_to_1972')"));
        Assert.assertTrue(ruleString.contains("year('moon_from_1969_to_1972', 1969)"));
        Assert.assertTrue(ruleString.contains("year('moon_from_1969_to_1972', 1972)"));
    }

    @Test
    // First conceived during Dwight D. Eisenhower's administration as a three-man spacecraft to follow the one-man Project
    // Mercury which put the first Americans in space, Apollo was later dedicated to President John F. Kennedy's national
    // goal of 'landing a man on the Moon and returning him safely to the Earth' by the end of the 1960s, which he proposed
    // in a May 25, 1961, address to Congress.
    void TestSentenceTwo() {
        String content = "First conceived during Dwight_D_Eisenhower's administration as a three-man spacecraft to follow the " +
        "one-man Project_Mercury, which put the first Americans in space, Apollo was later dedicated to president John_F_Kennedy's " +
        "national goal of 'landing a man on the Moon and returning him safely to the Earth' by the end of the 1960s, which John_F_Kennedy " +
        "proposed in an address to Congress in May 25 1961.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(45, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(american, first)"));
        Assert.assertTrue(ruleString.contains("_mod(conceive, first)"));
        Assert.assertTrue(ruleString.contains("_mod(dedicate, later)"));
        Assert.assertTrue(ruleString.contains("_mod(goal, national)"));
        Assert.assertTrue(ruleString.contains("_mod(project_mercury, one_man)"));
        Assert.assertTrue(ruleString.contains("_mod(propose, john_f_kennedy)"));
        Assert.assertTrue(ruleString.contains("_mod(return, safely)"));
        Assert.assertTrue(ruleString.contains("_mod(spacecraft, three_man)"));
        Assert.assertTrue(ruleString.contains("_possess(dwight_d_eisenhower, administration)"));
        Assert.assertTrue(ruleString.contains("_possess(john_f_kennedy, goal)"));
        Assert.assertTrue(ruleString.contains("_property(1, administration, as, spacecraft)"));
        Assert.assertTrue(ruleString.contains("_property(1, conceive, during, administration)"));
        Assert.assertTrue(ruleString.contains("_property(5, dedicate, _by, end)"));
        Assert.assertTrue(ruleString.contains("_property(5, dedicate, to, goal)"));
        Assert.assertTrue(ruleString.contains("_property(5, end, of, 1960)"));
        Assert.assertTrue(ruleString.contains("_property(6, man, on, moon)"));
        Assert.assertTrue(ruleString.contains("_property(8, propose, in, 'may_25_1961')"));
        Assert.assertTrue(ruleString.contains("_property(8, propose, in, address)"));
        Assert.assertTrue(ruleString.contains("_property(8, propose, to, congress)"));
        Assert.assertTrue(ruleString.contains("_property(3, put, in, space)"));
        Assert.assertTrue(ruleString.contains("_property(7, return, to, earth)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("_relation(5, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(6, 7, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(goal, 6, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(goal, 7, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, conceive, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, follow, null, one_man_project_mercury)"));
        Assert.assertTrue(ruleString.contains("event(2, follow, null, project_mercury)"));
        Assert.assertTrue(ruleString.contains("event(3, put, one_man_project_mercury, american)"));
        Assert.assertTrue(ruleString.contains("event(3, put, one_man_project_mercury, first_american)"));
        Assert.assertTrue(ruleString.contains("event(3, put, project_mercury, american)"));
        Assert.assertTrue(ruleString.contains("event(3, put, project_mercury, first_american)"));
        Assert.assertTrue(ruleString.contains("event(4, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(5, dedicate, null, apollo)"));
        Assert.assertTrue(ruleString.contains("event(6, land, null, man)"));
        Assert.assertTrue(ruleString.contains("event(6, land, null, man_on_moon)"));
        Assert.assertTrue(ruleString.contains("event(7, return, null, he)"));
        Assert.assertTrue(ruleString.contains("event(8, propose, end, null)"));
        Assert.assertTrue(ruleString.contains("organization(congress)"));
        Assert.assertTrue(ruleString.contains("time('may_25_1961')"));
        Assert.assertTrue(ruleString.contains("time(1960)"));
        Assert.assertTrue(ruleString.contains("month('may_25_1961', may)"));
        Assert.assertTrue(ruleString.contains("year('may_25_1961', 1961)"));
        Assert.assertTrue(ruleString.contains("day('may_25_1961', 25)"));
    }

    @Test
    // Project Mercury was followed by the two-man Project Gemini (1962–1966). The first manned flight of Apollo was in 1968.
    void TestSentenceThree() {
        String content = "Project_Mercury was followed by the two-man Project_Gemini (1962 – 1966).";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(10, ruleString.size());
        Assert.assertTrue(ruleString.contains("_end_date(project_gemini, 1966)"));
        Assert.assertTrue(ruleString.contains("_start_date(project_gemini, 1962)"));
        Assert.assertTrue(ruleString.contains("_mod(project_gemini, two_man)"));
        Assert.assertTrue(ruleString.contains("_property(2, follow, _by, project_gemini)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, follow, null, project_mercury)"));
        Assert.assertTrue(ruleString.contains("time(1962)"));
        Assert.assertTrue(ruleString.contains("time(1966)"));
        Assert.assertTrue(ruleString.contains("year(1962, 1962)"));
        Assert.assertTrue(ruleString.contains("year(1966, 1966)"));
    }

    @Test
    // The first manned flight of Apollo was in 1968
    void TestSentenceFour() {
        String content = "The first manned flight of Apollo was in 1968.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        HashSet<String> ruleString = new HashSet<>();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(flight, first)"));
        Assert.assertTrue(ruleString.contains("_mod(flight, manned)"));
        Assert.assertTrue(ruleString.contains("_property(1, flight, of, apollo)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("time(1968)"));
        Assert.assertTrue(ruleString.contains("year(1968, 1968)"));
    }
}