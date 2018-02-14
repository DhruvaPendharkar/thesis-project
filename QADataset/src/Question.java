import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dhruv on 2/13/2018.
 */
public class Question {
    private String question;
    List<String> answers;

    @Override
    public String toString() {
        StringBuilder builder = new StringBuilder();
        builder.append(this.question + "\n");
        builder.append(answers);
        return builder.toString();
    }

    Question(String question, List<String> answers){
        this.question = question;
        this.answers = answers;
    }

    public static Question CreateQuestion(JSONObject object) throws JSONException {
        if(object == null) return null;
        String questionString = object.getString("question");
        List<String> answers = new ArrayList<>();
        JSONArray answerArray = object.getJSONArray("answers");
        for(int i=0; i<answerArray.length(); i++){
            JSONObject answer = answerArray.getJSONObject(i);
            answers.add(answer.getString("text"));
        }
        Question question = new Question(questionString, answers);
        return question;
    }
}
