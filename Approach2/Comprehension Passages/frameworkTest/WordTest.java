import edu.stanford.nlp.international.Language;
import edu.stanford.nlp.trees.GrammaticalRelation;
import org.junit.Assert;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by dhruv on 2/3/2018.
 */
class WordTest {
    @Test
    void TestConvertWordToString() {
        Word word = new Word(1, "test", "test", "NN", "");
        Assert.assertEquals("test-1", word.toString());
    }

    @Test
    void TestAddNullDependency() {
        Word word = new Word(1, "test", "test", "NN", "");
        word.AddDependency(null, new GrammaticalRelation(Language.English, "rel1", "relation1", GrammaticalRelation.DEPENDENT));
    }

    @Test
    void TestAddNewDependency() {
        Word word = new Word(1, "test", "test", "NN", "");
        Word dependant = new Word(2, "dependant", "dependant", "NN", "");
        word.AddDependency(dependant, new GrammaticalRelation(Language.English, "rel2", "relation2", GrammaticalRelation.DEPENDENT));
    }

    @Test
    void TestAddOldDependency() {
        Word word = new Word(1, "test", "test", "NN", "");
        Word dependant = new Word(2, "dependant", "dependant", "NN", "");
        Word anotherDependancy = new Word(2, "anotherDependancy", "anotherDependancy", "NN", "");
        word.AddDependency(dependant, new GrammaticalRelation(Language.English, "rel3", "relation3", GrammaticalRelation.DEPENDENT));
        word.AddDependency(anotherDependancy, new GrammaticalRelation(Language.English, "rel4", "relation4", GrammaticalRelation.DEPENDENT));
    }

    @Test
    void TestGetPOSTagForWord() {
        Word word = new Word(1, "test", "test", "NN", "");
        Assert.assertEquals("NN", word.getPOSTag());
    }

    @Test
    void TestGetLemma() {
        Word word = new Word(1, "test", "test", "NN", "");
        Assert.assertEquals("test", word.getLemma());
    }

    @Test
    void TestGetWord() {
        Word word = new Word(1, "test", "test", "NN", "");
        Assert.assertEquals("test", word.getWord());
    }

    @Test
    void TestGenerateRules() {
        Word word = new Word(1, "test", "test", "NN", "");
        Assert.assertEquals(0, word.GenerateRules().size());
    }
}