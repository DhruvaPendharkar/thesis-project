import java.util.List;

/**
 * Created by dhruv on 9/24/2017.
 */
public class Rule implements Comparable<Rule> {
    private Literal head;
    private List<Literal> body;
    private boolean isQuestion = false;

    public Rule(Literal head, List<Literal> body, boolean isQuestion){
        this.head = head;
        this.body = body;
        this.isQuestion = isQuestion;
    }

    public Rule(Literal head, boolean isQuestion){
        this.head = head;
        this.body = null;
        this.isQuestion = isQuestion;
    }

    @Override
    public String toString() {
        if(this.body == null || this.body.size() == 0){
            String literal = this.head.toString();
            return this.isQuestion ? "?- " + literal : literal;
        }

        String headLiteral = this.head.toString();
        String bodyLiteral = BodyToString(this.body);

        return String.format("%s :- %s", headLiteral, bodyLiteral);
    }

    private String BodyToString(List<Literal> body) {
        StringBuilder builder = new StringBuilder();
        for(Literal literal : body){
            builder.append(String.format("%s,", literal.toString()));
        }

        return builder.substring(0, builder.length()-1).toString();
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Rule rule = (Rule) o;

        return this.toString().equals(rule.toString());
    }

    @Override
    public int hashCode() {
        return 1;
    }

    @Override
    public int compareTo(Rule rule) {
        int rank = Rule.GetRuleRank(this);
        int otherRank = Rule.GetRuleRank(rule);

        if(rank == otherRank){
            return this.toString().compareTo(rule.toString());
        }

        return otherRank - rank;
    }

    private static boolean IsFact(Rule rule) {
        if(rule.head != null && rule.body == null){
            return true;
        }

        return false;
    }

    private static int GetRuleRank(Rule rule){
        if(rule.isQuestion) {
            return 1;
        }

        if(IsFact(rule)){
            return 3;
        }

        return 2;
    }
}
