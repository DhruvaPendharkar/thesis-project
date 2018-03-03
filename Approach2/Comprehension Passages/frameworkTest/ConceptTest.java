import org.junit.Assert;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by dhruv on 2/3/2018.
 */
class ConceptTest {
    @Test
    void TestGetSanitizedString() {
        Assert.assertEquals("joint_venture", Concept.GetSanitizedString("joint_venture"));
        Assert.assertEquals("graham", Concept.GetSanitizedString("graham"));
        Assert.assertEquals("ab", Concept.GetSanitizedString("ab"));
    }

    @Test
    void TestConceptEquals() {
        Concept concept1 = new Concept("lions", "animal");
        Concept concept2 = new Concept("lion's", "animal");
        Assert.assertEquals(concept1, concept2);
    }

    @Test
    void TestConceptNotEquals() {
        Concept concept1 = new Concept("lions", "animal");
        Concept concept2 = new Concept("lion's", "animal");
        Assert.assertEquals(concept1.hashCode(), concept2.hashCode());
    }

    @Test
    void TestAddNewHypernym() {
        Concept concept = new Concept("lion", "animal");
        Concept parentConcept = new Concept("vertebrate", "animal");
        Concept anotherparentConcept = new Concept("person", "person");
        concept.SetHypernym("animal", parentConcept);
        concept.SetHypernym("person", anotherparentConcept);
        Assert.assertEquals(2, concept.hypernymMap.size());
    }

    @Test
    void TestAddOldHypernym() {
        Concept concept = new Concept("lion", "animal");
        Concept parentConcept = new Concept("vertebrate", "animal");
        Concept anotherparentConcept = new Concept("animal", "animal");
        concept.SetHypernym("animal", parentConcept);
        concept.SetHypernym("animal", anotherparentConcept);
        Assert.assertEquals(1, concept.hypernymMap.size());
    }
}