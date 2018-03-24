import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;

/**
 * Created by dhruv on 3/24/2018.
 */
public class WhereQuestionsTest {
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
}
