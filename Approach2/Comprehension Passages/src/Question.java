import javafx.util.Pair;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by dhruv on 10/4/2017.
 */
public class Question extends Sentence {

    QuestionInformation information = null;

    public Question(String sentence) {
        super(sentence);
        information = ExtractInformation(this);
    }

    private QuestionInformation ExtractInformation(Question question) {
        QuestionInformation information = new QuestionInformation();
        Word questionWord = null;
        for(Word word : this.wordList){
            if(word.IsQuestionWord()){
                questionWord = word;
                break;
            }
        }

        information.questionWord = questionWord;
        information.questionType = GetQuestionType(questionWord);
        Word answerKind = GetAnswerKind(questionWord);
        information.answerKind = answerKind;
        information.answerType = GetAnswerType(answerKind);
        return information;
    }

    private AnswerType GetAnswerType(Word answerKind) {
        switch(answerKind.getLemma().toLowerCase()){
            case "year": return AnswerType.YEAR;
            case "time": return AnswerType.TIME;
            case "day": return AnswerType.DAY;
            case "month": return AnswerType.MONTH;
        }

        for(Word word : this.wordList){
            if(word.IsVerb()){
                AnswerType type = word.GetAnswerType(answerKind);
                if(type != AnswerType.UNKNOWN) return type;
            }
        }
        return AnswerType.UNKNOWN;
    }

    private Word GetAnswerKind(Word questionWord) {
        for(Word word : wordList){
            List<Word> determiners = word.GetDeterminers();
            for(Word determiner : determiners){
                if(determiner == questionWord){
                    return word;
                }
            }
        }

        return null;
    }

    private QuestionType GetQuestionType(Word questionWord) {
        switch(questionWord.getLemma().toLowerCase()){
            case "what": return QuestionType.WHAT;
            case "where": return QuestionType.WHERE;
            case "who": return QuestionType.WHO;
            case "when": return QuestionType.WHEN;
        }

        return QuestionType.UNKNOWN;
    }

    public List<Rule> GenerateRules() {
        List<Rule> rules = new ArrayList<>();
        List<Rule> constrains = this.preProcessRules;
        List<Rule> eventQueries = new ArrayList<>();

        for(Word word : this.wordList){
            if(word.getPOSTag().equalsIgnoreCase(",")) continue;
            if(word.IsVerb()){
                eventQueries.addAll(word.GenerateVerbQuestionRules(this.information));
            }
        }

        constrains.addAll(Word.GenerateQuestionConstraintRules(information));
        Rule constraint = Rule.AggregateAllRules(constrains);
        for(Rule eventQuery : eventQueries){
            Rule rule = ApplyConstraint(eventQuery, constraint);
            rules.add(rule);
        }

        return rules;
    }

    private Rule ApplyConstraint(Rule eventQuery, Rule constraint) {
        List<Rule> rules = new ArrayList<>();
        rules.add(eventQuery);
        rules.add(constraint);
        Rule combinedRule = Rule.AggregateAllRules(rules);
        return combinedRule;
    }
}
