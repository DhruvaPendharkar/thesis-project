import org.junit.Assert;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/**
 * Created by dhruv on 2/10/2018.
 */
class WordNetTest {
    @Test
    void TestWSDDefaultRules() throws IOException {
        HashSet<String> nouns = new HashSet<>();
        nouns.add("animal");
        StorageManager manager = new StorageManager();
        WordNet.BuildOntology(nouns);
        List<Rule> rules = WordNet.WriteOntology(manager, false);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(11, ruleString.size());
        Assert.assertTrue(ruleString.contains("animal(X, noun_Tops) :- animal(X),not abnormal_d_tops(X),not -animal(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("organism(X, noun_Tops) :- organism(X),not abnormal_d_tops(X),not -organism(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("physical_entity(X, noun_Tops) :- physical_entity(X),not abnormal_d_tops(X),not -physical_entity(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("living_thing(X, noun_Tops) :- living_thing(X),not abnormal_d_tops(X),not -living_thing(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("entity(X, noun_Tops) :- entity(X),not abnormal_d_tops(X),not -entity(X, noun_Tops)"));

    }

    @Test
    void TestWSDPreferenceRules() throws IOException {
        HashSet<String> nouns = new HashSet<>();
        nouns.add("lion");
        StorageManager manager = new StorageManager();
        WordNet.BuildOntology(nouns);
        List<Rule> rules = WordNet.WriteOntology(manager, false);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(41, ruleString.size());
        Assert.assertTrue(ruleString.contains("lion(X, noun_person) :- lion(X),not -lion(X, noun_person),-lion(X, noun_animal),not lion(X, noun_location)"));
        Assert.assertTrue(ruleString.contains("lion(X, noun_location) :- lion(X),not -lion(X, noun_location),-lion(X, noun_animal),-lion(X, noun_person)"));
    }

    @Test
    void TestHypernymOntology() throws IOException {
        HashSet<String> nouns = new HashSet<>();
        nouns.add("lion");
        StorageManager manager = new StorageManager();
        WordNet.BuildOntology(nouns);
        List<Rule> rules = WordNet.WriteOntology(manager, false);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(41, ruleString.size());
        Assert.assertTrue(ruleString.contains("celebrity(X, noun_person) :- lion(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("big_cat(X, noun_animal) :- lion(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("person(X, noun_Tops) :- lion(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("important_person(X, noun_person) :- celebrity(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("feline(X, noun_animal) :- big_cat(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("organism(X, noun_Tops) :- person(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("adult(X, noun_person) :- important_person(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("carnivore(X, noun_animal) :- feline(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("living_thing(X, noun_Tops) :- organism(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("person(X, noun_Tops) :- adult(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("placental(X, noun_animal) :- carnivore(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("object(X, noun_Tops) :- living_thing(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("mammal(X, noun_animal) :- placental(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("vertebrate(X, noun_animal) :- mammal(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("chordate(X, noun_animal) :- vertebrate(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("animal(X, noun_Tops) :- chordate(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("organism(X, noun_Tops) :- animal(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("physical_entity(X, noun_Tops) :- object(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("entity(X, noun_Tops) :- physical_entity(X, noun_Tops)"));
    }

    @Test
    void TestBuildOntology() throws IOException {
        HashSet<String> nouns = new HashSet<>();
        nouns.add("lion");
        nouns.add("person");
        StorageManager manager = new StorageManager();
        WordNet.InitializeDictionary();
        WordNet.BuildOntology(nouns);
        List<Rule> rules = WordNet.WriteOntology(manager, false);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(67, ruleString.size());
    }

    @Test
    void GenerateASPCodeFromConcepts() {
        Concept lion = new Concept("lion", "animal");
        Concept animal = new Concept("animal", "top");
        List<Concept> list = new ArrayList<>();
        list.add(animal);
        List<Concept> conceptList = new ArrayList<>();
        lion.hypernymMap = new HashMap<>();
        lion.hypernymMap.put("animal", list);
        conceptList.add(lion);
        String aspCode = WordNet.GenerateConceptToASPCode(conceptList);
        Assert.assertEquals("animal(X, animal) :- lion(X, animal).\n", aspCode);
    }

    @Test
    void WriteStoryFacts() throws IOException {
        HashSet<String> nouns = new HashSet<>();
        nouns.add("lion");
        StorageManager manager = new StorageManager();
        WordNet.InitializeDictionary();
        WordNet.BuildOntology(nouns);
        List<Rule> rules = WordNet.WriteOntology(manager, false);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        String code = WordNet.WriteStoryFacts(manager, "predicate(term1, term2)", false);
        Assert.assertTrue(code.length() != 0);
        String[] lines = code.split("\n");
        Assert.assertEquals(19, lines.length);

        Assert.assertEquals("ontology\\\\celebrity", lines[0]);
        Assert.assertEquals("ontology\\\\feline", lines[1]);
        Assert.assertEquals("ontology\\\\organism", lines[2]);
        Assert.assertEquals("ontology\\\\living_thing", lines[3]);
        Assert.assertEquals("ontology\\\\placental", lines[4]);
        Assert.assertEquals("ontology\\\\vertebrate", lines[5]);
        Assert.assertEquals("ontology\\\\physical_entity", lines[6]);
        Assert.assertEquals("ontology\\\\chordate", lines[7]);
        Assert.assertEquals("ontology\\\\lion", lines[8]);
        Assert.assertEquals("ontology\\\\big_cat", lines[9]);
        Assert.assertEquals("ontology\\\\mammal", lines[10]);
        Assert.assertEquals("ontology\\\\person", lines[11]);
        Assert.assertEquals("ontology\\\\carnivore", lines[12]);
        Assert.assertEquals("ontology\\\\animal", lines[13]);
        Assert.assertEquals("ontology\\\\adult", lines[14]);
        Assert.assertEquals("ontology\\\\important_person", lines[15]);
        Assert.assertEquals("ontology\\\\entity", lines[16]);
        Assert.assertEquals("ontology\\\\object", lines[17]);
        Assert.assertEquals("predicate(term1, term2)", lines[18]);
    }

}