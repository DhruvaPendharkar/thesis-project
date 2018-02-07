import org.junit.Assert;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by dhruv on 2/3/2018.
 */
class WordTest {
    @Test
    void TestConvertWordToString() {
        Word word = new Word(1, "test", "test", "NN", "", false);
        Assert.assertEquals("test-1", word.toString());
    }

    @Test
    void TestAddNullDependency() {
        Word word = new Word(1, "test", "test", "NN", "", false);
        word.AddDependency(null, "");
    }

    @Test
    void TestAddNewDependency() {
        Word word = new Word(1, "test", "test", "NN", "", false);
        Word dependant = new Word(2, "dependant", "dependant", "NN", "", false);
        word.AddDependency(dependant, "depends");
    }

    @Test
    void TestAddOldDependency() {
        Word word = new Word(1, "test", "test", "NN", "", false);
        Word dependant = new Word(2, "dependant", "dependant", "NN", "", false);
        Word anotherDependancy = new Word(2, "anotherDependancy", "anotherDependancy", "NN", "", false);
        word.AddDependency(dependant, "depends");
        word.AddDependency(anotherDependancy, "depends");
    }

    @Test
    void TestGetPOSTagForWord() {
        Word word = new Word(1, "test", "test", "NN", "", false);
        Assert.assertEquals("NN", word.getPOSTag());
    }

    @Test
    void TestGetLemma() {
        Word word = new Word(1, "test", "test", "NN", "", false);
        Assert.assertEquals("test", word.getLemma());
    }

    @Test
    void TestGetWord() {
        Word word = new Word(1, "test", "test", "NN", "", false);
        Assert.assertEquals("test", word.getWord());
    }

    @Test
    void TestGenerateRules() {
        Word word = new Word(1, "test", "test", "NN", "", false);
        Assert.assertEquals(0, word.GenerateRules(false).size());
    }
}