import jdk.nashorn.internal.runtime.QuotedStringTokenizer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dhruv on 2/13/2018.
 */
public class Passage {
    private int id;
    private String context;
    private List<Question> questions;

    Passage(int id, String context, List<Question> questions){
        this.id = id;
        this.context = context;
        this.questions = questions;
    }

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(String.format("Passage : %s\n", this.id));
        builder.append(this.context + "\n");
        for(Question question : questions){
            builder.append(String.format("%s\n",question));
        }

        return builder.toString();
    }

    public static Passage CreatePassage(int id, JSONObject object) throws JSONException {
        if(object == null) return null;
        String context = object.getString("context");
        JSONArray questionArray = object.getJSONArray("qas");
        List<Question> questions = new ArrayList<>();
        for(int i=0;i<questionArray.length();i++){
            object = questionArray.getJSONObject(i);
            Question question = Question.CreateQuestion(object);
            questions.add(question);
        }

        Passage passage = new Passage(id, context, questions);
        return passage;
    }
}
