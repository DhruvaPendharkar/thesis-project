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
public class AmazonRainforestStoryTest {
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
    // The Amazon rainforest, also known in English as Amazonia or the Amazon Jungle, is a moist broadleaf forest that
    // covers most of the Amazon basin of South America.
    void TestSentenceOne() {
        String content = "The Amazon_rainforest, also known in English as Amazonia or the Amazon_Jungle, is a moist " +
        "broadleafed forest that covers most of the Amazon_basin of South_America.";
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
        Assert.assertTrue(ruleString.contains("_is(amazon_rainforest, forest)"));
        Assert.assertTrue(ruleString.contains("_is(amazon_rainforest, moist_broadleafed_forest)"));
        Assert.assertTrue(ruleString.contains("_mod(forest, broadleafed)"));
        Assert.assertTrue(ruleString.contains("_mod(forest, moist)"));
        Assert.assertTrue(ruleString.contains("_mod(know, also)"));
        Assert.assertTrue(ruleString.contains("_property(3, amazon_basin, of, south_america)"));
        Assert.assertTrue(ruleString.contains("_property(1, know, as, amazon_jungle)"));
        Assert.assertTrue(ruleString.contains("_property(1, know, as, amazonia)"));
        Assert.assertTrue(ruleString.contains("_property(1, know, in, english)"));
        Assert.assertTrue(ruleString.contains("_property(3, most, of, amazon_basin)"));
        Assert.assertTrue(ruleString.contains("_relation(amazon_rainforest, 1, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, know, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(3, cover, forest, most)"));
        Assert.assertTrue(ruleString.contains("event(3, cover, forest, most_of_amazon_basin)"));
        Assert.assertTrue(ruleString.contains("event(3, cover, moist_broadleafed_forest, most)"));
        Assert.assertTrue(ruleString.contains("event(3, cover, moist_broadleafed_forest, most_of_amazon_basin)"));
        Assert.assertTrue(ruleString.contains("forest(amazon_rainforest)"));
    }

    @Test
    // This basin encompasses 7,000,000 square kilometres (2,700,000 sq mi), of which 5,500,000 square kilometres
    // (2,100,000 sq mi) are covered by the rainforest.
    void TestSentenceTwo() {
        String content = "This basin encompasses 7,000,000 square_kilometre, of which 5,500,000 square_kilometre are " +
        "covered by the rainforest.";
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
        Assert.assertTrue(ruleString.contains("_mod(square_kilometre, '5,500,000')"));
        Assert.assertTrue(ruleString.contains("_mod(square_kilometre, '7,000,000')"));
        Assert.assertTrue(ruleString.contains("_property(3, cover, _by, rainforest)"));
        Assert.assertTrue(ruleString.contains("_property(3, cover, of, '7,000,000_square_kilometre')"));
        Assert.assertTrue(ruleString.contains("event(1, encompass, basin, square_kilometre)"));
        Assert.assertTrue(ruleString.contains("event(2, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(3, cover, null, square_kilometre)"));
        Assert.assertTrue(ruleString.contains("number('5,500,000')"));
        Assert.assertTrue(ruleString.contains("number('7,000,000')"));
    }

    @Test
    // This region includes territory belonging to nine nations.
    void TestSentenceThree() {
        String content = "The Amazon_Rainforest includes territory belonging to nine nations.";
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
        Assert.assertTrue(ruleString.contains("_mod(nation, nine)"));
        Assert.assertTrue(ruleString.contains("_property(2, belong, to, nine_nation)"));
        Assert.assertTrue(ruleString.contains("_relation(territory, 2, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, 'include', amazon_rainforest, territory)"));
        Assert.assertTrue(ruleString.contains("event(2, belong, null, null)"));
        Assert.assertTrue(ruleString.contains("number(nine)"));
    }

    @Test
    // The majority of the forest is contained within Brazil, with 60% of the rainforest, followed by Peru with 13%,
    // Colombia with 10%, and with minor amounts in Venezuela, Ecuador, Bolivia, Guyana, Suriname and French Guiana.
    void TestSentenceFour() {
        String content = "The majority of the forest is contained within Brazil with 60 percent of the rainforest, followed by" +
        " Peru with 13 percent, Colombia with 10 percent, and with minor amounts in Venezuela, Ecuador, Bolivia, Guyana, Suriname and" +
        " French_Guiana.";
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

        Assert.assertEquals(23, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(amount, minor)"));
        Assert.assertTrue(ruleString.contains("_mod(percent, 10)"));
        Assert.assertTrue(ruleString.contains("_mod(percent, 13)"));
        Assert.assertTrue(ruleString.contains("_mod(percent, 60)"));
        Assert.assertTrue(ruleString.contains("_property(2, amount, in, bolivia)"));
        Assert.assertTrue(ruleString.contains("_property(2, amount, in, ecuador)"));
        Assert.assertTrue(ruleString.contains("_property(2, amount, in, french_guiana)"));
        Assert.assertTrue(ruleString.contains("_property(2, amount, in, guyana)"));
        Assert.assertTrue(ruleString.contains("_property(2, amount, in, suriname)"));
        Assert.assertTrue(ruleString.contains("_property(2, amount, in, venezuela)"));
        Assert.assertTrue(ruleString.contains("_property(2, colombia, with, '10_percent')"));
        Assert.assertTrue(ruleString.contains("_property(2, colombia, with, amount)"));
        Assert.assertTrue(ruleString.contains("_property(2, contain, with, '60_percent')"));
        Assert.assertTrue(ruleString.contains("_property(2, contain, within, brazil)"));
        Assert.assertTrue(ruleString.contains("_property(2, majority, of, forest)"));
        Assert.assertTrue(ruleString.contains("_property(2, percent, of, rainforest)"));
        Assert.assertTrue(ruleString.contains("_property(2, peru, with, '13_percent')"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, contain, null, majority)"));
        Assert.assertTrue(ruleString.contains("event(3, follow, null, null)"));
        Assert.assertTrue(ruleString.contains("number(10)"));
        Assert.assertTrue(ruleString.contains("number(13)"));
        Assert.assertTrue(ruleString.contains("number(60)"));
    }

    @Test
    // States or departments in four nations contain "Amazonas" in their names.
    void TestSentenceFive() {
        String content = "States or departments in four nations contain the word, Amazonas, in their name.";
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
        Assert.assertTrue(ruleString.contains("_is(word, amazona)"));
        Assert.assertTrue(ruleString.contains("_mod(nation, four)"));
        Assert.assertTrue(ruleString.contains("_possess(they, name)"));
        Assert.assertTrue(ruleString.contains("_property(1, state, in, four_nation)"));
        Assert.assertTrue(ruleString.contains("_property(1, word, in, name)"));
        Assert.assertTrue(ruleString.contains("event(1, contain, department, word)"));
        Assert.assertTrue(ruleString.contains("event(1, contain, department, word_in_name)"));
        Assert.assertTrue(ruleString.contains("event(1, contain, null, word)"));
        Assert.assertTrue(ruleString.contains("event(1, contain, state, word)"));
        Assert.assertTrue(ruleString.contains("event(1, contain, state, word_in_name)"));
        Assert.assertTrue(ruleString.contains("number(four)"));
        Assert.assertTrue(ruleString.contains("organization(amazonas)"));
        Assert.assertTrue(ruleString.contains("word(amazona)"));
    }

    @Test
    // The Amazon represents over half of the planet's remaining rainforests, and comprises the largest and most
    // biodiverse tract of tropical rainforest in the world, with an estimated 390 billion individual trees divided
    // into 16,000 species.
    void TestSentenceSix() {
        String content = "The Amazon represents over half of the planet's remaining rainforests, and comprises of the " +
        "largest and most biodiverse tract of tropical rainforest in the world, with an estimated 390 billion individual" +
        " trees divided into 16,000 species.";
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

        Assert.assertEquals(24, ruleString.size());
        Assert.assertTrue(ruleString.contains("_mod(rainforest, remaining)"));
        Assert.assertTrue(ruleString.contains("_mod(species, '16,000')"));
        Assert.assertTrue(ruleString.contains("_mod(tract, largest)"));
        Assert.assertTrue(ruleString.contains("_mod(tract, most)"));
        Assert.assertTrue(ruleString.contains("_mod(tree, individual)"));
        Assert.assertTrue(ruleString.contains("_mod(tree, rainforest)"));
        Assert.assertTrue(ruleString.contains("_mod(tree, tropical)"));
        Assert.assertTrue(ruleString.contains("_possess(planet, rainforest)"));
        Assert.assertTrue(ruleString.contains("_property(3, comprise, of, tract)"));
        Assert.assertTrue(ruleString.contains("_property(5, divide, into, '16,000_species')"));
        Assert.assertTrue(ruleString.contains("_property(1, half, of, rainforest)"));
        Assert.assertTrue(ruleString.contains("_property(3, rainforest, in, world)"));
        Assert.assertTrue(ruleString.contains("_property(3, rainforest, with, billion)"));
        Assert.assertTrue(ruleString.contains("_property(3, tract, of, tree)"));
        Assert.assertTrue(ruleString.contains("_relation(1, 3, _conj)"));
        Assert.assertTrue(ruleString.contains("_relation(tree, 5, _clause)"));
        Assert.assertTrue(ruleString.contains("event(1, represent, amazon, half)"));
        Assert.assertTrue(ruleString.contains("event(1, represent, amazon, half_of_rainforest)"));
        Assert.assertTrue(ruleString.contains("event(3, comprise, amazon, null)"));
        Assert.assertTrue(ruleString.contains("event(5, divide, null, null)"));
        Assert.assertTrue(ruleString.contains("number('16,000')"));
        Assert.assertTrue(ruleString.contains("number(390)"));
        Assert.assertTrue(ruleString.contains("number(billion)"));
        Assert.assertTrue(ruleString.contains("organization(amazon)"));
    }
}