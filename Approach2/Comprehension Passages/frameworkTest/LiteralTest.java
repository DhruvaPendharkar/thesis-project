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
        Word atom = new Word("test", false);
        Literal literal = new Literal(atom);
        Assert.assertEquals("test", literal.toString());
    }

    @Test
    void TestNoBodyLiteralToString() {
        Word predicate = new Word("do", false);
        Literal literal = new Literal(predicate, new ArrayList<>());
        Assert.assertEquals("Error : No terms found in body", literal.toString());
    }

    @Test
    void TestPredicateNAFToString() {
        Word predicate = new Word("live", false);
        Word subjectWord = new Word("lion", false);
        Word modifierWord = new Word("forest", false);
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
        Word predicate = new Word("live", false);
        Word subjectWord = new Word("lion", false);
        Word modifierWord = new Word("forest", false);
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
        Word predicate = new Word("is", false);
        Word subjectWord = new Word("lion", false);
        Word modifierWord = new Word("scary", false);
        Literal subject = new Literal(subjectWord);
        Literal modifier = new Literal(modifierWord);
        List<Literal> body = new ArrayList<>();
        body.add(subject);
        body.add(modifier);
        Literal literal = new Literal(predicate, body);
        Assert.assertEquals("is(lion, scary)", literal.toString());
    }

    @Test
    void TestMixedCaseToString() {
        Word predicate = new Word("is", false);
        Word subjectWord = new Word("super_bowl_50", false);
        Word modifierWord = new Word("game", false);
        Literal subject = new Literal(subjectWord);
        Literal modifier = new Literal(modifierWord);
        List<Literal> body = new ArrayList<>();
        body.add(subject);
        body.add(modifier);
        Literal literal = new Literal(predicate, body);
        Assert.assertEquals("is('super_bowl_50', game)", literal.toString());
    }

    @Test
    void TestMixedCaseOnlyNumbersToString() {
        Word predicate = new Word("is", false);
        Word subjectWord = new Word("score", false);
        Word modifierWord = new Word("24_10", false);
        Literal subject = new Literal(subjectWord);
        Literal modifier = new Literal(modifierWord);
        List<Literal> body = new ArrayList<>();
        body.add(subject);
        body.add(modifier);
        Literal literal = new Literal(predicate, body);
        Assert.assertEquals("is(score, '24_10')", literal.toString());
    }
}