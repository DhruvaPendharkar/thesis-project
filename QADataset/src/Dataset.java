import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class Dataset {
    public static List<Article> ReadDataset(String dataFilePath) throws JSONException, IOException {
        String jsonData = ReadFile(dataFilePath);
        List<Article> articles = new ArrayList<>();
        JSONObject obj = new JSONObject(jsonData);
        JSONArray dataArray = obj.getJSONArray("data");
        for(int i=0; i<dataArray.length(); i++){
            JSONObject object = (JSONObject) dataArray.get(i);
            Article article = Article.CreateArticle(i+1, object);
            if(article == null) continue;
            articles.add(article);
        }

        return articles;
    }

    private static String ReadFile(String filePath) throws IOException {
        String line;
        StringBuilder builder = new StringBuilder();

        FileReader fileReader = new FileReader(filePath);
        BufferedReader bufferedReader = new BufferedReader(fileReader);
        while((line = bufferedReader.readLine()) != null) {
            builder.append(line);
        }

        bufferedReader.close();
        return builder.toString();
    }
}
