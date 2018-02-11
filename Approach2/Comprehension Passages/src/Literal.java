import java.util.List;

/**
 * Created by dhruv on 9/24/2017.
 */
public class Literal {
    private String predicate;
    private List<Literal> terms;
    private boolean isAtom;
    public boolean isNAF = false;
    public boolean isClassicalNegation = false;

    public Literal(Word predicate, List<Literal> terms){
        String predicateString = predicate.getLemma();
        predicateString = predicateString.replaceAll("-", "_");
        predicateString = predicateString.replaceAll("'", "");
        this.predicate = predicateString;
        this.terms = terms;
        this.isAtom = false;
    }

    public Literal(Word atom){
        this.predicate = atom.getWord();
        this.isAtom = true;
        if(atom.getPOSTag().startsWith("W")){
            this.predicate = "X";
        }
    }

    @Override
    public String toString() {
        if(this.isAtom) {
            return this.predicate;
        }

        if(terms.size() == 0){
            return "Error : No terms found in body";
        }
        String format = "%s(%s)";
        if(this.isNAF){
            format = "not %s(%s)";
        }
        else if(this.isClassicalNegation){
            format = "- %s(%s)";
        }

        StringBuilder builder = new StringBuilder();
        for(Literal term : terms){
            builder.append(term.toString() + ", ");
        }

        String literalString = builder.substring(0, builder.length()-2);
        return String.format(format, this.predicate, literalString);
    }
}
