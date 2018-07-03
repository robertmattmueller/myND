package mynd.heuristic;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import mynd.Global;
import mynd.Options;
import mynd.explicit.ExplicitCondition;
import mynd.explicit.ExplicitEffect;
import mynd.explicit.ExplicitOperator;
import mynd.explicit.ExplicitOperator.OperatorRule;
import mynd.heuristic.FFHeuristic.RPGStrategy;
import mynd.parser.SasParser;
import mynd.problem.FullyObservableProblem;
import mynd.problem.Problem;
import mynd.search.AbstractSearch;
import mynd.search.AbstractSearch.Result;
import mynd.search.LAOStarSearch;
import mynd.state.Operator;
import mynd.state.State;
import mynd.util.Pair;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runners.MethodSorters;

/**
 *
 * @author Manuela Ortlieb
 *
 */

@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class FFHeuristicTest {

  private String toAbsolute(String resFile){
    File file = new File(getClass().getClassLoader().getResource
            (resFile).getFile());
    return file.getAbsolutePath();
  }


  @Test
  public void test1InitHValue() throws FileNotFoundException, IOException {


    String filename = toAbsolute("fond/test.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    for (Operator op : problem.getOperators()) {
      if (op.getName().equals("op1")) {
        assertEquals((int) op.getCost(), 5);
      } else if (op.getName().equals("op2")) {
        assertEquals((int) op.getCost(), 1);
      } else {
        assertEquals(op.getName(), "op3");
        assertEquals((int) op.getCost(), 0);
      }
    }
    FFHeuristic ff = new FFHeuristic(problem, RPGStrategy.MAX);
    assertNotNull(ff);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 1: init h-value " + ff.getHeuristic(init));
    assertTrue(ff.getHeuristic(init) == 1);
    System.out.println();
  }

  @Test
  public void test2InitHValue() throws FileNotFoundException, IOException {

    String filename = toAbsolute("fond/test2.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    for (Operator op : problem.getOperators()) {
      if (op.getName().equals("op1")) {
        assertEquals((int) op.getCost(), 10);
      } else if (op.getName().equals("op2")) {
        assertEquals((int) op.getCost(), 1);
      } else if (op.getName().equals("op3")) {
        assertEquals((int) op.getCost(), 1);
      } else if (op.getName().equals("op4")) {
        assertEquals((int) op.getCost(), 1);
      } else {
        assertEquals(op.getName(), "op5");
        assertEquals((int) op.getCost(), 1);
      }
    }
    FFHeuristic ff = new FFHeuristic(problem, RPGStrategy.MAX);
    assertNotNull(ff);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 2: init h-value " + ff.getHeuristic(init));
    assertTrue(ff.getHeuristic(init) == 4);
    System.out.println();
  }

  @Test
  public void test3InitHValue() throws FileNotFoundException, IOException {
    // unit cost test
    String filename = toAbsolute("fond/test3.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    for (Operator op : problem.getOperators()) {
      if (op.getName().equals("op1")) {
        assertEquals((int) op.getCost(), 1);
      } else if (op.getName().equals("op2")) {
        assertEquals((int) op.getCost(), 1);
      } else if (op.getName().equals("op3")) {
        assertEquals((int) op.getCost(), 1);
      } else {
        assertEquals(op.getName(), "op4");
        assertEquals((int) op.getCost(), 1);
      }
    }
    FFHeuristic ff = new FFHeuristic(problem, RPGStrategy.MAX);
    assertNotNull(ff);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 3: init h-value " + ff.getHeuristic(init));
    assertTrue(ff.getHeuristic(init) == 2);
    System.out.println();
  }

  @Test
  public void test4InitHValue() throws FileNotFoundException, IOException {

    String filename = toAbsolute("fond/test4.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    for (Operator op : problem.getOperators()) {
      if (op.getName().equals("op1")) {
        assertEquals((int) op.getCost(), 0);
      } else if (op.getName().equals("op2")) {
        assertEquals((int) op.getCost(), 10);
      } else if (op.getName().equals("op3")) {
        assertEquals((int) op.getCost(), 5);
      } else if (op.getName().equals("op4")) {
        assertEquals((int) op.getCost(), 10);
      } else if (op.getName().equals("op5")) {
        assertEquals((int) op.getCost(), 20);
      } else {
        assertEquals(op.getName(), "op6");
        assertEquals((int) op.getCost(), 0);
      }
    }
    FFHeuristic ff = new FFHeuristic(problem, RPGStrategy.MAX);
    assertNotNull(ff);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 4: init h-value " + ff.getHeuristic(init));
    assertTrue(ff.getHeuristic(init) == 15);
    System.out.println();
  }

  @Test
  public void test5InitHValue() throws FileNotFoundException, IOException {
    String filename = toAbsolute("fond/test5.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    FFHeuristic ff = new FFHeuristic(problem, RPGStrategy.MAX);
    assertNotNull(ff);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 5: init h-value " + ff.getHeuristic(init));
    assertTrue(ff.getHeuristic(init) == 2);
    System.out.println();
  }

  @Test
  public void test6InitHValue() throws FileNotFoundException, IOException {
    String filename = toAbsolute("fond/test6.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    FFHeuristic hmax = new FFHeuristic(problem, RPGStrategy.MAX);
    assertNotNull(hmax);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 6: init h-value " + hmax.getHeuristic(init));
    assertTrue(hmax.getHeuristic(init) == 1);
    System.out.println();
  }

  @Test
  public void test7Axioms() throws FileNotFoundException, IOException {

    String filename = toAbsolute("fond/test-axioms.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    FFHeuristic hmax = new FFHeuristic(problem, RPGStrategy.MAX);
    assertNotNull(hmax);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 7 (Axioms): init h-value " + hmax.getHeuristic(init));
    assertTrue(hmax.getHeuristic(init) < Heuristic.INFINITE_HEURISTIC);
    System.out.println();
  }

  @Test
  public void test8Axioms() throws FileNotFoundException, IOException {
    String filename = toAbsolute("fond/test-axioms2.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    FFHeuristic hmax = new FFHeuristic(problem, RPGStrategy.MAX);
    assertNotNull(hmax);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 8 (Axioms): init h-value " + hmax.getHeuristic(init));
    assertTrue(hmax.getHeuristic(init) < Heuristic.INFINITE_HEURISTIC);
    System.out.println();
  }

  @Test
  public void test9Axioms() throws FileNotFoundException, IOException {
    Global.options = new Options();
    int[] initialValuation = {0, 0};
    Map<Integer, Integer> goalMap = new HashMap<Integer, Integer>();
    goalMap.put(1, 0);
    ExplicitCondition goal = new ExplicitCondition(goalMap);
    ArrayList<String> variableNames = new ArrayList<String>();
    variableNames.add("A");
    variableNames.add("B");
    List<List<String>> propositionNames = new ArrayList<List<String>>();
    ArrayList<Integer> domainSizes = new ArrayList<Integer>();
    domainSizes.add(2);
    domainSizes.add(2);
    ArrayList<Integer> axiomLayer;
    axiomLayer = new ArrayList<Integer>();
    axiomLayer.add(-1);
    axiomLayer.add(0);
    ArrayList<Integer> defaultAxiomValues;
    defaultAxiomValues = new ArrayList<Integer>();
    defaultAxiomValues.add(0);
    defaultAxiomValues.add(0);
    LinkedHashSet<Operator> operators = new LinkedHashSet<Operator>();
    Set<Set<ExplicitEffect>> nondeterministicEffect = new HashSet<Set<ExplicitEffect>>();
    Set<ExplicitEffect> effect = new HashSet<ExplicitEffect>();
    Map<Integer, Integer> m = new HashMap<Integer, Integer>();
    effect.add(new ExplicitEffect(new ExplicitCondition(m), 0, 1));
    nondeterministicEffect.add(effect);
    Set<Pair<Integer, Integer>> observation = new HashSet<Pair<Integer, Integer>>();
    Operator op =
        new ExplicitOperator("op", new ExplicitCondition(m), nondeterministicEffect, observation,
            false, 1);
    operators.add(op);
    Set<Pair<Integer, Integer>> body = new HashSet<Pair<Integer, Integer>>();
    Pair<Integer, Integer> b = new Pair<Integer, Integer>(0, 0);
    body.add(b);
    Pair<Integer, Integer> head = new Pair<Integer, Integer>(1, 1);
    ExplicitOperator.OperatorRule rule = new OperatorRule(body, head);
    Set<OperatorRule> axioms = new HashSet<ExplicitOperator.OperatorRule>();
    axioms.add(rule);
    Problem problem =
        new FullyObservableProblem(initialValuation, goal, variableNames, propositionNames,
            domainSizes, axiomLayer, defaultAxiomValues, operators, axioms);
    problem.finishInitializationAndPreprocessing();

    // Test if problem is solvable
    ZeroHeuristic zero = new ZeroHeuristic(problem);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    AbstractSearch search = new LAOStarSearch(problem, zero);
    Result result = search.run();
    assertEquals(Result.PROVEN, result);

    // Test h-value of hmax and FF
    FFHeuristic hmax = new FFHeuristic(problem, RPGStrategy.MAX);
    FFHeuristic hff = new FFHeuristic(problem, RPGStrategy.FF);
    assertNotNull(hmax);
    assertNotNull(hff);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 9 (Axioms): init h-value (hmax) " + hmax.getHeuristic(init));
    System.out.println("Test 9 (Axioms): init h-value (FF) " + hff.getHeuristic(init));
    assertTrue(hmax.getHeuristic(init) < Heuristic.INFINITE_HEURISTIC);
    assertTrue(hff.getHeuristic(init) < Heuristic.INFINITE_HEURISTIC);
    System.out.println();
  }

}
