import org.junit.Assert;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

/**
 * Created by dhruv on 2/3/2018.
 */
class RuleTest {
    @Test
    void TestGetRuleString() {
        Word predicate = new Word("live");
        Word subjectWord = new Word("lion");
        Word modifierWord = new Word("forest");
        Word animal = new Word("animal");

        Literal subject = new Literal(subjectWord);
        Literal modifier = new Literal(modifierWord);
        List<Literal> bodyList = new ArrayList<>();
        bodyList.add(subject);
        bodyList.add(modifier);
        Literal head = new Literal(predicate, bodyList);
        Rule rule = new Rule(head, null, false);
        Assert.assertEquals("live(lion, forest)", rule.toString());

        bodyList = new ArrayList<>();
        bodyList.add(subject);
        Literal body = new Literal(animal, bodyList);
        bodyList = new ArrayList<>();
        bodyList.add(body);
        rule = new Rule(head, bodyList, false);
        Assert.assertEquals("live(lion, forest) :- animal(lion)", rule.toString());
    }

    @Test
    void TestAreRulesEqual() {
        Word predicate = new Word("live");
        Word subjectWord = new Word("lion");
        Word modifierWord = new Word("forest");
        Word animal = new Word("animal");

        Literal subject = new Literal(subjectWord);
        Literal modifier = new Literal(modifierWord);
        List<Literal> bodyList = new ArrayList<>();
        bodyList.add(subject);
        bodyList.add(modifier);
        Literal head = new Literal(predicate, bodyList);
        Rule rule1 = new Rule(head, null, false);
        Rule rule2 = new Rule(head, null, false);
        Assert.assertEquals(rule1, rule1);
        Assert.assertEquals(rule1.hashCode(), rule1.hashCode());
        Assert.assertNotEquals(rule1, 1);
        Assert.assertEquals(rule1, rule2);
    }

    @Test
    void TestCompareRules() {
        Word predicate = new Word("live");
        Word subjectWord = new Word("lion");
        Word modifierWord = new Word("forest");
        Word animal = new Word("animal");

        Literal subject = new Literal(subjectWord);
        Literal modifier = new Literal(modifierWord);
        List<Literal> bodyList = new ArrayList<>();
        bodyList.add(subject);
        bodyList.add(modifier);
        Literal head = new Literal(predicate, bodyList);
        Rule rule1 = new Rule(head, null, false);

        bodyList = new ArrayList<>();
        bodyList.add(subject);
        Literal body = new Literal(animal, bodyList);
        bodyList = new ArrayList<>();
        bodyList.add(body);
        Rule rule2 = new Rule(head, bodyList, false);
        Rule rule3 = new Rule(head, bodyList, true);
        Assert.assertEquals(1, rule2.compareTo(rule1));
        Assert.assertEquals(2, rule3.compareTo(rule1));
        Assert.assertEquals(0, rule3.compareTo(rule3));
    }

}