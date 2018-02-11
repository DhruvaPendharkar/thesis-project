import org.junit.Assert;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by dhruv on 2/3/2018.
 */
class LiteralTest {
    @Test
    void TestAtomLiteralToString() {
        Word atom = new Word("test");
        Literal literal = new Literal(atom);
        Assert.assertEquals("test", literal.toString());
    }

    @Test
    void TestQuestionAtomLiteralToString() {
        Word atom = new Word(1, "test", "test", "WH", "", false);
        Literal literal = new Literal(atom);
        Assert.assertEquals("X", literal.toString());
    }

    @Test
    void TestNoBodyLiteralToString() {
        Word predicate = new Word("do");
        Literal literal = new Literal(predicate, new ArrayList<>());
        Assert.assertEquals("Error : No terms found in body", literal.toString());
    }

    @Test
    void TestPredicateNAFToString() {
        Word predicate = new Word("live");
        Word subjectWord = new Word("lion");
        Word modifierWord = new Word("forest");
        Literal subject = new Literal(subjectWord);
        Literal modifier = new Literal(modifierWord);
        List<Literal> body = new ArrayList<>();
        body.add(subject);
        body.add(modifier);
        Literal literal = new Literal(predicate, body);
        literal.isNAF = true;
        Assert.assertEquals("not live(lion, forest)", literal.toString());
    }

    @Test
    void TestPredicateClassicalNegationToString() {
        Word predicate = new Word("live");
        Word subjectWord = new Word("lion");
        Word modifierWord = new Word("forest");
        Literal subject = new Literal(subjectWord);
        Literal modifier = new Literal(modifierWord);
        List<Literal> body = new ArrayList<>();
        body.add(subject);
        body.add(modifier);
        Literal literal = new Literal(predicate, body);
        literal.isClassicalNegation = true;
        Assert.assertEquals("-live(lion, forest)", literal.toString());
    }

    @Test
    void TestPredicateToString() {
        Word predicate = new Word("is");
        Word subjectWord = new Word("lion");
        Word modifierWord = new Word("scary");
        Literal subject = new Literal(subjectWord);
        Literal modifier = new Literal(modifierWord);
        List<Literal> body = new ArrayList<>();
        body.add(subject);
        body.add(modifier);
        Literal literal = new Literal(predicate, body);
        Assert.assertEquals("is(lion, scary)", literal.toString());
    }
}