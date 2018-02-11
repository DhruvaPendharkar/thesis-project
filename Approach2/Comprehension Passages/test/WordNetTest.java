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
    void TestHypernymOntology() throws IOException {
        HashSet<String> nouns = new HashSet<>();
        nouns.add("lion");
        StorageManager manager = new StorageManager();
        WordNet.InitializeDictionary();
        WordNet.GenerateHypernymOntology(nouns);
        List<Rule> rules = WordNet.WriteOntology(manager, false);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rules){
            ruleString.add(rule.toString());
        }

        Assert.assertEquals(19, ruleString.size());
        Assert.assertTrue(ruleString.contains("celebrity(X, noun.person) :- lion(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("big_cat(X, noun.animal) :- lion(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("person(X, noun.Tops) :- lion(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("important_person(X, noun.person) :- celebrity(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("feline(X, noun.animal) :- big_cat(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("organism(X, noun.Tops) :- person(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("adult(X, noun.person) :- important_person(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("carnivore(X, noun.animal) :- feline(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("living_thing(X, noun.Tops) :- organism(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("person(X, noun.Tops) :- adult(X, noun_person)"));
        Assert.assertTrue(ruleString.contains("placental(X, noun.animal) :- carnivore(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("object(X, noun.Tops) :- living_thing(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("mammal(X, noun.animal) :- placental(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("vertebrate(X, noun.animal) :- mammal(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("chordate(X, noun.animal) :- vertebrate(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("animal(X, noun.Tops) :- chordate(X, noun_animal)"));
        Assert.assertTrue(ruleString.contains("organism(X, noun.Tops) :- animal(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("physical_entity(X, noun.Tops) :- object(X, noun_Tops)"));
        Assert.assertTrue(ruleString.contains("entity(X, noun.Tops) :- physical_entity(X, noun_Tops)"));
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

        Assert.assertEquals(31, ruleString.size());
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