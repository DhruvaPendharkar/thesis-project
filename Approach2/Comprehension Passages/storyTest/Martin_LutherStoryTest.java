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
public class Martin_LutherStoryTest {
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
    // Martin_Luther (10 November 1483 – 18 February 1546) was a German professor of theology, composer, priest, former
    // monk and a seminal figure in the Protestant_Reformation.
    void TestSentenceOne() {
        String content = "Martin_Luther (10 November 1483 – 18 February 1546) was a German_professor of theology, " +
        "composer, priest, former_monk and a seminal_figure in the Protestant_Reformation.";
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
    // Martin_Luther came to reject several teachings and practices of the Late_Medieval_Catholic_Church.
    void TestSentenceTwo() {
        String content = "Martin_Luther came to reject several teachings and practices of the " +
        "Late_Medieval_Catholic_Church.";
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

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(teaching, several)"));
        Assert.assertTrue(ruleString.contains("_property(teaching, of(late_medieval_catholic_church))"));
        Assert.assertTrue(ruleString.contains("_relation(1, 2, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(1, come, martin_luther, null)"));
        Assert.assertTrue(ruleString.contains("event(2, reject, martin_luther, practice)"));
        Assert.assertTrue(ruleString.contains("event(2, reject, martin_luther, several_teaching)"));
        Assert.assertTrue(ruleString.contains("event(2, reject, martin_luther, teaching)"));
        Assert.assertTrue(ruleString.contains("event(2, reject, martin_luther, teaching_of_late_medieval_catholic_church)"));
    }

    @Test
    // Martin_Luther strongly disputed the claim that freedom from God's punishment for sin could be purchased with
    // money.
    void TestSentenceThree() {
        String content = "Martin_Luther strongly disputed the claim that freedom from God's punishment for sin could " +
        "be purchased with money.";
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

        Assert.assertEquals(8, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(dispute, strongly)"));
        Assert.assertTrue(ruleString.contains("_possess(god, punishment)"));
        Assert.assertTrue(ruleString.contains("_property(freedom, from(punishment))"));
        Assert.assertTrue(ruleString.contains("_property(punishment, for(sin))"));
        Assert.assertTrue(ruleString.contains("_property(purchase, with(money))"));
        Assert.assertTrue(ruleString.contains("_relation(1, 3, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(1, dispute, martin_luther, claim)"));
        Assert.assertTrue(ruleString.contains("event(3, purchase, null, freedom)"));
    }

    @Test
    // Martin_Luther proposed an academic discussion of the power and usefulness of indulgences in his
    // Ninety_Five_Theses of 1517.
    void TestSentenceFour() {
        String content = "Martin_Luther proposed an academic discussion of the power and usefulness of indulgences in" +
                " Martin_Luther's proposition, Ninety_Five_Theses, of 1517.";
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
        Assert.assertTrue(ruleString.contains("_mod(discussion, academic)"));
        Assert.assertTrue(ruleString.contains("_possess(martin_luther, proposition)"));
        Assert.assertTrue(ruleString.contains("_property(discussion, of(power))"));
        Assert.assertTrue(ruleString.contains("_property(discussion, of(usefulness))"));
        Assert.assertTrue(ruleString.contains("_property(indulgence, in(proposition))"));
        Assert.assertTrue(ruleString.contains("_property(ninety_five_theses, of(1517))"));
        Assert.assertTrue(ruleString.contains("_property(power, of(indulgence))"));
        Assert.assertTrue(ruleString.contains("event(1, propose, martin_luther, academic_discussion)"));
        Assert.assertTrue(ruleString.contains("event(1, propose, martin_luther, discussion)"));
        Assert.assertTrue(ruleString.contains("event(1, propose, martin_luther, discussion_of_power)"));
        Assert.assertTrue(ruleString.contains("event(1, propose, martin_luther, discussion_of_usefulness)"));
        Assert.assertTrue(ruleString.contains("time(1517)"));
    }

    @Test
    // Martin_Luther's refusal to retract all of his writings at the demand of Pope_Leo_X in 1520 and the
    // Holy_Roman_Emperor_Charles_V at the Diet_of_Worms in 1521 resulted in his excommunication by the Pope and
    // condemnation as an outlaw by the Emperor.
    void TestSentenceFive() {
        String content = "Martin_Luther's refusal to retract all of Martin_Luther's writings at the demand of Pope_Leo_X in 1520 " +
        "and the Holy_Roman_Emperor_Charles_V at the Diet_of_Worms in 1521 resulted in Martin_Luther's excommunication by the Pope " +
        "and condemnation as an outlaw by the Emperor.";
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

        Assert.assertEquals(18, ruleString.size());
        Assert.assertTrue(ruleString.contains("_possess(martin_luther, excommunication)"));
        Assert.assertTrue(ruleString.contains("_possess(martin_luther, refusal)"));
        Assert.assertTrue(ruleString.contains("_property(demand, of(pope_leo_x))"));
        Assert.assertTrue(ruleString.contains("_property(diet_of_worms, in(1521))"));
        Assert.assertTrue(ruleString.contains("_property(holy_roman_emperor_charles_v, at(diet_of_worms))"));
        Assert.assertTrue(ruleString.contains("_property(pope, as(outlaw))"));
        Assert.assertTrue(ruleString.contains("_property(pope_leo_x, in(1520))"));
        Assert.assertTrue(ruleString.contains("_property(result, by(condemnation))"));
        Assert.assertTrue(ruleString.contains("_property(result, by(emperor))"));
        Assert.assertTrue(ruleString.contains("_property(result, by(pope))"));
        Assert.assertTrue(ruleString.contains("_property(result, in(excommunication))"));
        Assert.assertTrue(ruleString.contains("_property(writings, at(demand))"));
        Assert.assertTrue(ruleString.contains("_relation(refusal, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, retract, null, all)"));
        Assert.assertTrue(ruleString.contains("event(1, retract, null, all_of_martin_luther)"));
        Assert.assertTrue(ruleString.contains("event(2, result, holy_roman_emperor_charles_v, null)"));
        Assert.assertTrue(ruleString.contains("time(1520)"));
        Assert.assertTrue(ruleString.contains("time(1521)"));
    }
}