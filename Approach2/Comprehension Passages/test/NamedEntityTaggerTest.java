import org.junit.Assert;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by dhruv on 2/4/2018.
 */
class NamedEntityTaggerTest {
    @Test
    void TestNamedEntityTag() {
        Assert.assertEquals(NamedEntityTagger.NamedEntityTags.ORGANIZATION,
                NamedEntityTagger.GetEntityTag("ORGANIZATION"));
        Assert.assertEquals(NamedEntityTagger.NamedEntityTags.DATE,
                NamedEntityTagger.GetEntityTag("DATE"));
        Assert.assertEquals(NamedEntityTagger.NamedEntityTags.O,
                NamedEntityTagger.GetEntityTag("DEFAULT"));
    }

}