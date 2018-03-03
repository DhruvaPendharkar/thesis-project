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
public class CtenophoraStoryTest {
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
    // Ctenophora, commonly known as comb_jellies, is a phylum of animals that live in marine_waters worldwide.
    void TestSentenceOne() {
        String content = "Ctenophora, commonly known as comb_jellies, is a phylum of animals that live in " +
        "marine_waters worldwide";
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
        Assert.assertTrue(ruleString.contains("_is(ctenophora, phylum)"));
        Assert.assertTrue(ruleString.contains("_mod(know, commonly)"));
        Assert.assertTrue(ruleString.contains("_mod(live, worldwide)"));
        Assert.assertTrue(ruleString.contains("_property(know, as(comb_jellies))"));
        Assert.assertTrue(ruleString.contains("_property(live, in(marine_waters))"));
        Assert.assertTrue(ruleString.contains("_property(phylum, of(animal))"));
        Assert.assertTrue(ruleString.contains("_relation(ctenophora, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, know, null, null)"));
        Assert.assertTrue(ruleString.contains("event(3, live, animal, null)"));
        Assert.assertTrue(ruleString.contains("phylum(ctenophora)"));
    }

    @Test
    // Ctenophora's most distinctive feature is the combs, groups of cilia which the Ctenophora use for swimming.
    void TestSentenceTwo() {
        String content = "Ctenophora's most distinctive feature is the combs, groups of cilia, which the Ctenophora " +
        "use for swimming.";
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
        Assert.assertTrue(ruleString.contains("_is(comb, group)"));
        Assert.assertTrue(ruleString.contains("_is(distinctive_feature, comb)"));
        Assert.assertTrue(ruleString.contains("_is(feature, comb)"));
        Assert.assertTrue(ruleString.contains("_mod(feature, distinctive)"));
        Assert.assertTrue(ruleString.contains("_possess(ctenophora, feature)"));
        Assert.assertTrue(ruleString.contains("_property(group, of(cilium))"));
        Assert.assertTrue(ruleString.contains("_property(use, for(swimming))"));
        Assert.assertTrue(ruleString.contains("feature(comb)"));
        Assert.assertTrue(ruleString.contains("group(comb)"));
    }

    @Test
    // Ctenophora are the largest animals that swim by means of cilia.
    void TestSentenceThree() {
        String content = "Ctenophora are the largest animals that swim by means of cilia.";
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
        Assert.assertTrue(ruleString.contains("_is(ctenophora, animal)"));
        Assert.assertTrue(ruleString.contains("_is(ctenophora, largest_animal)"));
        Assert.assertTrue(ruleString.contains("_mod(animal, largest)"));
        Assert.assertTrue(ruleString.contains("_property(swim, by_means_of(cilium))"));
        Assert.assertTrue(ruleString.contains("animal(ctenophora)"));
        Assert.assertTrue(ruleString.contains("event(2, swim, animal, null)"));
        Assert.assertTrue(ruleString.contains("event(2, swim, largest_animal, null)"));
    }

    @Test
    // Adults of various species range from a few millimeters to 1.5 m (4 ft 11 in) in size.
    void TestSentenceFour() {
        String content = "Adults of various species range from a few millimeters to 1.5 meters in size.";
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
        Assert.assertTrue(ruleString.contains("_mod(meter, '1.5')"));
        Assert.assertTrue(ruleString.contains("_mod(millimeter, few)"));
        Assert.assertTrue(ruleString.contains("_mod(species, various)"));
        Assert.assertTrue(ruleString.contains("_property(adult, of(species))"));
        Assert.assertTrue(ruleString.contains("_property(meter, in(size))"));
        Assert.assertTrue(ruleString.contains("_property(range, from(millimeter))"));
        Assert.assertTrue(ruleString.contains("_property(range, to('1.5_meter'))"));
        Assert.assertTrue(ruleString.contains("event(1, range, adult, null)"));
    }

    @Test
    // Like cnidarians, Ctenophora's bodies consist of a mass_of_jelly, with one layer of cells on the outside and
    // another lining the internal cavity.
    void TestSentenceFive() {
        String content = "Like cnidarians, Ctenophora's bodies consist of a mass_of_jelly, with one layer of cells on " +
        "the outside and another lining the internal cavity.";
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
        Assert.assertTrue(ruleString.contains("_mod(cavity, internal)"));
        Assert.assertTrue(ruleString.contains("_mod(layer, one)"));
        Assert.assertTrue(ruleString.contains("_possess(ctenophora, body)"));
        Assert.assertTrue(ruleString.contains("_property(cell, on(outside))"));
        Assert.assertTrue(ruleString.contains("_property(consist, like(cnidarian))"));
        Assert.assertTrue(ruleString.contains("_property(consist, of(mass_of_jelly))"));
        Assert.assertTrue(ruleString.contains("_property(consist, with(line))"));
        Assert.assertTrue(ruleString.contains("_property(consist, with(one_layer))"));
        Assert.assertTrue(ruleString.contains("_property(layer, of(cell))"));
        Assert.assertTrue(ruleString.contains("event(1, consist, body, null)"));
        Assert.assertTrue(ruleString.contains("event(2, line, another, cavity)"));
        Assert.assertTrue(ruleString.contains("event(2, line, another, internal_cavity)"));
    }

    @Test
    // In ctenophores, the layers of mass_of_jelly are two cells deep, while the layers in cnidarians are only one
    // cell deep.
    void TestSentenceSix() {
        String content = "In ctenophores, the layers of mass_of_jelly are two_cells_deep, while the layers in cnidarians " +
        "are only one_cell_deep.";
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

        Assert.assertEquals(6, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(layer, one_cell_deep)"));
        Assert.assertTrue(ruleString.contains("_is(layer, only_one_cell_deep)"));
        Assert.assertTrue(ruleString.contains("_is(layer, two_cells_deep)"));
        Assert.assertTrue(ruleString.contains("_property(layer, in(cnidarian))"));
        Assert.assertTrue(ruleString.contains("_property(layer, of(mass_of_jelly))"));
        Assert.assertTrue(ruleString.contains("_property(two_cells_deep, in(ctenophore))"));
    }

    @Test
    // Some authors combined ctenophores and cnidarians in one phylum, Coelenterata, as both groups rely on water flow
    // through the body cavity for both digestion and respiration.
    void TestSentenceSeven() {
        String content = "Some authors combined ctenophores and cnidarians in one phylum, Coelenterata, as both groups " +
        "rely on water flow through the body cavity for both digestion and respiration.";
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
        Assert.assertTrue(ruleString.contains("_is(phylum, coelenterata)"));
        Assert.assertTrue(ruleString.contains("_mod(phylum, one)"));
        Assert.assertTrue(ruleString.contains("_property(cavity, for(digestion))"));
        Assert.assertTrue(ruleString.contains("_property(cavity, for(respiration))"));
        Assert.assertTrue(ruleString.contains("_property(combine, in(one_phylum))"));
        Assert.assertTrue(ruleString.contains("_property(rely, on(flow))"));
        Assert.assertTrue(ruleString.contains("_property(rely, through(cavity))"));
        Assert.assertTrue(ruleString.contains("event(1, combine, author, cnidarian)"));
        Assert.assertTrue(ruleString.contains("event(1, combine, author, ctenophore)"));
        Assert.assertTrue(ruleString.contains("event(2, rely, group, null)"));
        Assert.assertTrue(ruleString.contains("phylum(coelenterata)"));

    }

    @Test
    // Increasing awareness of the differences persuaded more recent authors to classify them as separate phyla.
    void TestSentenceEight() {
        String content = "Increasing awareness of the differences persuaded more recent authors to classify ctenophores " +
        "and cnidarians as separate phyla.";
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
        Assert.assertTrue(ruleString.contains("_mod(author, more)"));
        Assert.assertTrue(ruleString.contains("_mod(author, recent)"));
        Assert.assertTrue(ruleString.contains("_mod(awareness, increasing)"));
        Assert.assertTrue(ruleString.contains("_mod(phyla, separate)"));
        Assert.assertTrue(ruleString.contains("_property(awareness, of(difference))"));
        Assert.assertTrue(ruleString.contains("_relation(2, 3, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("event(2, persuade, awareness, author)"));
        Assert.assertTrue(ruleString.contains("event(2, persuade, awareness, more_recent_author)"));
        Assert.assertTrue(ruleString.contains("event(2, persuade, increasing_awareness, author)"));
        Assert.assertTrue(ruleString.contains("event(2, persuade, increasing_awareness, more_recent_author)"));
        Assert.assertTrue(ruleString.contains("event(3, classify, author, cnidarian)"));
        Assert.assertTrue(ruleString.contains("event(3, classify, author, ctenophore)"));
        Assert.assertTrue(ruleString.contains("event(3, classify, more_recent_author, cnidarian)"));
        Assert.assertTrue(ruleString.contains("event(3, classify, more_recent_author, ctenophore)"));
    }
}