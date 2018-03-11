import org.junit.Assert;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

/**
 * Created by dhruv on 2/21/2018.
 */
public class ComputationalComplexityStoryTest {
    @BeforeAll
    static void TestSetupParser() {
        Sentence.SetupLexicalizedParser();
        Assert.assertNotNull(Sentence.parser);
        Assert.assertNotNull(Sentence.pipeline);
    }

    @BeforeEach
    void InitializeTest(){
        Word.eventId = 1;
    }

    @Test
    // Computational complexity theory is a branch of the theory of computation in theoretical computer science
    // that focuses on classifying computational problems according to their inherent difficulty, and relating
    // those classes to each other.
    void TestSentenceOne() {
        String content = "Computational_complexity_theory is a branch of the theory_of_computation, in theoretical " +
        "computer_science, the branch focuses on classifying computational problems according to the problem's " +
        "inherent difficulty, and relating complexity_classes to each other.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(19, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(computational_complexity_theory, branch)"));
        Assert.assertTrue(ruleString.contains("_mod(computer_science, theoretical)"));
        Assert.assertTrue(ruleString.contains("_mod(difficulty, inherent)"));
        Assert.assertTrue(ruleString.contains("_mod(problem, computational)"));
        Assert.assertTrue(ruleString.contains("_possess(problem, difficulty)"));
        Assert.assertTrue(ruleString.contains("_property(1, branch, of, theory_of_computation)"));
        Assert.assertTrue(ruleString.contains("_property(3, classify, according_to, difficulty)"));
        Assert.assertTrue(ruleString.contains("_property(2, focus, in, computer_science)"));
        Assert.assertTrue(ruleString.contains("_property(5, relate, to, other)"));
        Assert.assertTrue(ruleString.contains("_relation(2, 3, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(2, 5, _clause)"));
        Assert.assertTrue(ruleString.contains("_relation(3, 5, _conj)"));
        Assert.assertTrue(ruleString.contains("branch(computational_complexity_theory)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, focus, branch, null)"));
        Assert.assertTrue(ruleString.contains("event(3, classify, null, computational_problem)"));
        Assert.assertTrue(ruleString.contains("event(3, classify, null, problem)"));
        Assert.assertTrue(ruleString.contains("event(4, accord, null, null)"));
        Assert.assertTrue(ruleString.contains("event(5, relate, null, complexity_classes)"));
    }

    @Test
    // A computational problem is understood to be a task that is in principle amenable to being solved by a computer,
    // which is equivalent to stating that the problem may be solved by mechanical application of mathematical steps,
    // such as an algorithm.
    void TestSentenceTwo() {
        String content = "A computational problem is understood to be a task that is in principle, amenable to being " +
        "solved by a computer, the task is equivalent to stating that the problem may be solved by mechanical_application " +
        "of mathematical steps such as an algorithm.";
        Sentence sentence = Sentence.ParseSentence(content);
        System.out.println(Sentence.DependenciesToString(sentence));
        List<Rule> rules = sentence.GenerateRules();
        TreeSet<Rule> rulesSet = new TreeSet<>(rules);
        HashSet<String> ruleString = new HashSet<>();
        for(Rule rule : rulesSet){
            ruleString.add(rule.toString());
            System.out.println(rule.toString());
        }

        Assert.assertEquals(27, ruleString.size());
        Assert.assertTrue(ruleString.contains("_is(computational_problem, task)"));
        Assert.assertTrue(ruleString.contains("_is(mathematical_step, algorithm)"));
        Assert.assertTrue(ruleString.contains("_is(problem, task)"));
        Assert.assertTrue(ruleString.contains("_is(step, algorithm)"));
        Assert.assertTrue(ruleString.contains("_is(task, amenable)"));
        Assert.assertTrue(ruleString.contains("_is(task, equivalent)"));
        Assert.assertTrue(ruleString.contains("_mod(problem, computational)"));
        Assert.assertTrue(ruleString.contains("_mod(step, mathematical)"));
        Assert.assertTrue(ruleString.contains("_property(2, amenable, in, principle)"));
        Assert.assertTrue(ruleString.contains("_property(10, mechanical_application, of, step)"));
        Assert.assertTrue(ruleString.contains("_property(6, solve, _by, computer)"));
        Assert.assertTrue(ruleString.contains("_property(10, solve, _by, mechanical_application)"));
        Assert.assertTrue(ruleString.contains("_relation(8, 10, _clcomplement)"));
        Assert.assertTrue(ruleString.contains("equivalent(task)"));
        Assert.assertTrue(ruleString.contains("event(10, solve, null, problem)"));
        Assert.assertTrue(ruleString.contains("event(1, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(2, understand, null, problem)"));
        Assert.assertTrue(ruleString.contains("event(3, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(4, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(5, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(6, solve, null, null)"));
        Assert.assertTrue(ruleString.contains("event(7, be, null, null)"));
        Assert.assertTrue(ruleString.contains("event(8, state, null, null)"));
        Assert.assertTrue(ruleString.contains("event(9, be, null, null)"));
        Assert.assertTrue(ruleString.contains("step(algorithm)"));
        Assert.assertTrue(ruleString.contains("task(computational_problem)"));
        Assert.assertTrue(ruleString.contains("task(problem)"));
    }
}
