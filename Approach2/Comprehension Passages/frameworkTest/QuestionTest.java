import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by dhruv on 2/3/2018.
 */
class QuestionTest {
    @BeforeAll
    static void TestSetupParser() {
        Sentence.SetupLexicalizedParser();
        Assert.assertNotNull(Sentence.parser);
        Assert.assertNotNull(Sentence.pipeline);
    }

    @Test
    void TestGenerateRules() {
        Question question = new Question("What is your name?");
        Assert.assertEquals(1, question.GenerateRules().size());
    }

    public static boolean TestQuestion(String questionString, String[] queriesString){
        Sentence question = Sentence.ParseSentence(questionString);
        List<Rule> queries = question.GenerateRules();
        HashSet<String> querySet = new HashSet<>();
        for(Rule query : queries){
            querySet.add(query.toString());
            System.out.println(query.toString());
        }

        System.out.println(Sentence.DependenciesToString(question));
        if(queriesString.length != querySet.size()){
            return false;
        }

        for(String queryString : queriesString) {
            if(!querySet.contains(queryString)){
                return false;
            }
        }

        return true;
    }
}