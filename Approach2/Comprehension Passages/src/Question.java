import java.util.ArrayList;
import java.util.List;

/**
 * Created by dhruv on 10/4/2017.
 */
public class Question extends Sentence {

    public Question(String sentence) {
        super(sentence);
    }

    public List<Rule> GenerateRules() {
        List<Rule> rules = new ArrayList<>();
        for(Word word : this.wordList){
            rules.addAll(word.GenerateRules(true));
        }

        rules = Rule.AggregateAllRules(rules);
        return rules;
    }
}
