import java.util.*;

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
        if(answerKind == null) return AnswerType.UNKNOWN;

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
        List<Rule> constraints = this.preProcessRules;
        List<Rule> eventQueries = new ArrayList<>();

        for(Word word : this.wordList){
            if(word.getPOSTag().equalsIgnoreCase(",")) continue;
            if(word.IsVerb()){
                eventQueries.addAll(word.GenerateVerbQuestionRules(this.information));
            }
            else if(word.IsNoun() || word.IsAdjective()){
                constraints.addAll(word.GenerateNounConstraintRules(this.information));
            }
        }

        List<Rule> finalConstraints = Word.GenerateQuestionConstraintRules(information);
        List<Rule> combinedConstraints = new ArrayList<>();
        Rule allConstraints = Rule.AggregateAllRules(constraints);
        for(Rule constraint : finalConstraints) {
            Rule rule = Rule.ApplyConstraint(constraint, allConstraints);
            combinedConstraints.add(rule);
        }

        for(Rule eventQuery : eventQueries){
            for(Rule combinedConstraint : combinedConstraints){
                Rule rule = Rule.ApplyConstraint(eventQuery, combinedConstraint);
                rules.add(rule);
            }
        }

        if(rules.size() != 0) return rules;
        rules.addAll(combinedConstraints);

        return rules;
    }

    public List<Rule> GenerateAllRules() {
        TreeSet<Rule> rulesSet = new TreeSet<>(new Comparator<Rule>() {
            @Override
            public int compare(Rule rule, Rule anotherRule) {
                return rule.toString().compareTo(anotherRule.toString());
            }
        });

        List<Rule> unconstraintRules = GenerateRules();
        rulesSet.addAll(unconstraintRules);

        Set<Rule> factConstraintRules = FilterRules(unconstraintRules, LiteralType.CONSTRAINT_QUERY);
        rulesSet.addAll(factConstraintRules);

        Set<Rule> variableConstraintRules = FilterRules(unconstraintRules, LiteralType.ANSWER_QUERY);
        rulesSet.addAll(variableConstraintRules);

        Set<Rule> weakConstraintRules = FilterRules(unconstraintRules, LiteralType.BASE_CONSTRAINT);
        rulesSet.addAll(weakConstraintRules);

        List<Rule> rulesList = new ArrayList<>(rulesSet);
        Collections.sort(rulesList, new Comparator<Rule>() {
            @Override
            public int compare(Rule rule, Rule anotherRule) {
                int ruleQuality = rule.maxRuleQuality.ordinal();
                int anotherRuleQuality = anotherRule.maxRuleQuality.ordinal();
                return Integer.compare(ruleQuality, anotherRuleQuality);
            }
        });

        return rulesList;
    }

    private TreeSet<Rule> FilterRules(List<Rule> inputRules, LiteralType maxLiteralType) {
        TreeSet<Rule> rules = new TreeSet<>();
        for(Rule inputRule : inputRules){
            Rule rule = Rule.FilterRule(inputRule, maxLiteralType);
            if(rule != null) rules.add(rule);
        }

        return rules;
    }
}
