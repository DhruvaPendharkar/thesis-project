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
        List<Rule> rulesList = new ArrayList<>();
        List<Rule> rules;
        for(Word word : wordList){
            if(word.getPOSTag().startsWith("VB") || word.equals(this.semanticRoot)){
                rules = word.GetRuleByRelationPair("advmod", "nsubj", true);
                if(rules != null) rulesList.addAll(rules);
                rules = word.GetRuleByRelationPair("nmod", "nsubj", true);
                if(rules != null) rulesList.addAll(rules);
            }
        }

        return rulesList;
    }
}
