import org.json.JSONException;
import org.junit.jupiter.api.Test;

import java.io.IOException;
import java.util.List;

/**
 * Created by dhruv on 2/13/2018.
 */
class DatasetTest {
    @Test
    void TestReadJsonData() throws JSONException, IOException {
        String jsonDataPath = "C:\\Users\\dhruv\\Desktop\\Research\\thesis-material\\QADataset\\dataset\\dev-v1.1.json";
        List<Article> articles = Dataset.ReadDataset(jsonDataPath);

        for(Article article : articles) {
            System.out.println(article);
        }
    }
}