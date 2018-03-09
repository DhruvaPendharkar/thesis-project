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
        List<Rule> rules = this.preProcessRules;

        for(Word word : this.wordList){
            if(word.getPOSTag().equalsIgnoreCase(",")) continue;
            rules.addAll(word.GenerateRules());
        }

        rules.addAll(this.semanticRoot.GenerateCopulaRules());
        rules = Rule.AggregateAllRules(rules);
        return rules;
    }
}
