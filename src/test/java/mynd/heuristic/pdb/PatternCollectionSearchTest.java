package mynd.heuristic.pdb;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

import java.io.*;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

import mynd.Global;
import mynd.MyNDPlanner;
import mynd.Options;
import mynd.parser.SasParser;
import mynd.problem.Problem;
import mynd.state.Operator;

import org.junit.Before;
import org.junit.Test;

public class PatternCollectionSearchTest {

  private String toAbsolute(String resFile){
    File file = new File(getClass().getClassLoader().getResource
            (resFile).getFile());
    return file.getAbsolutePath();
  }

  @Before
  public void setUp() {
    MyNDPlanner.testMode = true;
  }



  @Test
  public void testComputeAllowedPatternVariablesForPOND() throws FileNotFoundException, IOException {
    // System.out.println("testComputeAllowedPatternVariablesForPOND");
    // Parse a test POND problem.
    String filename = toAbsolute("pond/bw-test-3.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();

    // Test 1: Original problem
    // There are sensing actions for clear, on-table and on-bx-by, but not for hand.
    // emptyhand and holding can't be observed.
    // emptyhand is true in the initial state. It is not part of the goal. But it is part of
    // preconditions.
    // emptyhand is can become uncertain. That means that it is not allowed to use variable 3 as
    // pattern variable.
    Set<Integer> result = PatternCollectionSearch.computeAllowedPatternVariablesForPOND(problem);
    int numStateVars = problem.numStateVars;
    assertTrue(result.size() == (numStateVars - 1));
    assertFalse(result.contains(3));

    Set<Operator> allOps = new HashSet<Operator>(problem.getOperators());
    // Test 2: Without sensing actions
    Set<Operator> opsModified = new HashSet<Operator>();
    for (Operator op : allOps) {
      if (op.isCausative) {
        opsModified.add(op);
      }
    }
    problem.setOperators(opsModified);
    // Because all vars can become uncertain none of the vars should be allowed as pattern
    result = PatternCollectionSearch.computeAllowedPatternVariablesForPOND(problem);
    assertTrue(result.isEmpty());

    // Test 3: Observe only clear variables
    opsModified.clear();
    for (Operator op : allOps) {
      if (op.isCausative) {
        opsModified.add(op);
      } else if (op.getName().startsWith("senseclear")) {
        opsModified.add(op);
      }
    }
    problem.setOperators(opsModified, false);
    result = PatternCollectionSearch.computeAllowedPatternVariablesForPOND(problem);
    assertTrue(result.size() == 3);
    assertTrue(result.contains(0));
    assertTrue(result.contains(1));
    assertTrue(result.contains(2));
  }

  @Test
  public void testReduceToValidPattern() throws FileNotFoundException, IOException {
    // Test 1
    String filename = toAbsolute("pond/mini_sensing.sas");
    InputStream sasFile = new FileInputStream(new File(filename));

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    Integer[] a1 = new Integer[] {1};
    Set<Integer> p1 = new HashSet<Integer>(Arrays.asList(a1));
    Integer[] a2 = new Integer[] {0, 1};
    Set<Integer> p2 = new HashSet<Integer>(Arrays.asList(a2));
    Integer[] a3 = new Integer[] {0, 1, 2};
    Set<Integer> p3 = new HashSet<Integer>(Arrays.asList(a3));
    Integer[] a4 = new Integer[] {0};
    Set<Integer> p4 = new HashSet<Integer>(Arrays.asList(a4));

    assertTrue(problem != null);
    Global.options = new Options();
    assertTrue(Global.options != null);

    Set<Integer> allowed = PatternCollectionSearch.computeAllowedPatternVariablesForPOND(problem);
    assertEquals(3, allowed.size());

    PatternCollectionSearch pdbSearch = new PatternCollectionSearch(problem);
    Set<Integer> p1Reduced = pdbSearch.reduceToValidPattern(p1);
    assertTrue(p1.equals(p1Reduced));
    Set<Integer> p2Reduced = pdbSearch.reduceToValidPattern(p2);
    assertFalse(p2.equals(p2Reduced));
    assertTrue(p2Reduced.equals(p1Reduced));
    Set<Integer> p3Reduced = pdbSearch.reduceToValidPattern(p3);
    assertTrue(p3Reduced.equals(p3));
    Set<Integer> p4Reduced = pdbSearch.reduceToValidPattern(p4);
    assertTrue(p4Reduced.equals(p4));

    // Test 2
    System.out.println("Test 2");
    filename = toAbsolute("pond/mini_sensing2.sas");
    System.err.println(filename);
    sasFile = new FileInputStream(new File(filename));


    parser = new SasParser();
    problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    pdbSearch = new PatternCollectionSearch(problem);
    a1 = new Integer[] {0, 2};
    p1 = new HashSet<Integer>(Arrays.asList(a1));
    p1Reduced = pdbSearch.reduceToValidPattern(p1);
    // System.out.println("p1 reduced: " + p1Reduced);
    assertTrue(p1.equals(p1Reduced));
    a2 = new Integer[] {0, 5};
    p2 = new HashSet<Integer>(Arrays.asList(a2));
    p2Reduced = pdbSearch.reduceToValidPattern(p2);
    assertTrue(p2Reduced.size() == 1);
    a3 = new Integer[] {0, 3, 4};
    p3 = new HashSet<Integer>(Arrays.asList(a3));
    p3Reduced = pdbSearch.reduceToValidPattern(p3);
    assertTrue(p3Reduced.size() == 2);
    // System.out.println("p3 reduced: " + p3Reduced);
    a4 = new Integer[] {1, 4};
    p4 = new HashSet<Integer>(Arrays.asList(a4));
    p4Reduced = pdbSearch.reduceToValidPattern(p4);
    assertTrue(p4Reduced.size() == 1);
    // System.out.println("p4 reduced: " + p4Reduced);
    Integer[] a5 = new Integer[] {0, 1, 2, 3, 4, 5, 6};
    Set<Integer> p5 = new HashSet<Integer>(Arrays.asList(a5));
    Set<Integer> p5Reduced = pdbSearch.reduceToValidPattern(p5);
    assertTrue(p5Reduced.equals(p5));
    // System.out.println("p5 reduced: " + p5Reduced);
    Integer[] a6 = new Integer[] {4, 5};
    Set<Integer> p6 = new HashSet<Integer>(Arrays.asList(a6));
    Set<Integer> p6Reduced = pdbSearch.reduceToValidPattern(p6);
    assertTrue(p6Reduced.equals(p6));
    // System.out.println("p6 reduced: " + p6Reduced);

    // Test 3
    System.out.println("Test 3");
    filename = toAbsolute("pond/mini_sensing3.sas");
    System.err.println(filename);
    sasFile = new FileInputStream(new File(filename));

    parser = new SasParser();
    problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    pdbSearch = new PatternCollectionSearch(problem);
    a1 = new Integer[] {2, 3};
    p1 = new HashSet<Integer>(Arrays.asList(a1));
    p1Reduced = pdbSearch.reduceToValidPattern(p1);
    // System.out.println("p1 reduced: " + p1Reduced);
    assertTrue(p1Reduced.size() == 1 && p1Reduced.contains(3));
    a2 = new Integer[] {0, 2, 3};
    p2 = new HashSet<Integer>(Arrays.asList(a2));
    p2Reduced = pdbSearch.reduceToValidPattern(p2);
    // System.out.println("p2 reduced: " + p2Reduced);
    assertTrue(p2Reduced.size() == 1 && p2Reduced.contains(3));

  }

  // // TODO: method is private
  // @Test
  // public void testExtendToValidPattern() throws FileNotFoundException, IOException {
  // // Test 1
  // System.out.println("Test 1");
  // InputStream sasFile = getClass().getResourceAsStream("../../../data/pond/mini_sensing2.sas");
  // SasParser parser = new SasParser();
  // Problem problem = parser.parse(sasFile);
  // problem.finishInitializationAndPreprocessing();
  // assertTrue(problem != null);
  // Global.options = new Options();
  // assertTrue(Global.options != null);
  //
  // PatternCollectionSearch pdbSearch = new PatternCollectionSearch(problem);
  // Integer[] a1 = new Integer[] {0, 2};
  // Set<Integer> p1 = new HashSet<Integer>(Arrays.asList(a1));
  // Set<Integer> p1Extended = pdbSearch.extendToValidPattern(p1, 0);
  // assertTrue(p1.equals(p1Extended));
  // p1Extended = pdbSearch.extendToValidPattern(p1, 2);
  // assertTrue(p1.equals(p1Extended));
  //
  // Integer[] a2 = new Integer[] {0, 5};
  // Set<Integer> p2 = new HashSet<Integer>(Arrays.asList(a2));
  // Set<Integer> p2Extended = pdbSearch.extendToValidPattern(p2, 0);
  // assertTrue(p2Extended.size() == 4);
  // // System.out.println(p2Extended);
  // p2Extended = pdbSearch.extendToValidPattern(p2, 5);
  // assertTrue(p2Extended.size() == 4);
  //
  // Integer[] a3 = new Integer[] {0, 3, 4};
  // Set<Integer> p3 = new HashSet<Integer>(Arrays.asList(a3));
  // Set<Integer> p3Extended = pdbSearch.extendToValidPattern(p3, 0);
  // assertTrue(p3Extended.size() == 4);
  // // System.out.println(p3Extended);
  //
  // Integer[] a4 = new Integer[] {1, 4};
  // Set<Integer> p4 = new HashSet<Integer>(Arrays.asList(a4));
  // Set<Integer> p4Extended = pdbSearch.extendToValidPattern(p4, 1);
  // assertTrue(p4Extended.size() == 3);
  // assertTrue(p4Extended.contains(6));
  // p4Extended = pdbSearch.extendToValidPattern(p4, 4);
  // assertTrue(p4Extended.size() == 3);
  // assertTrue(p4Extended.contains(6));
  //
  // Integer[] a5 = new Integer[] {0, 1, 2, 3, 4, 5, 6};
  // Set<Integer> p5 = new HashSet<Integer>(Arrays.asList(a5));
  // Set<Integer> p5Extended = pdbSearch.extendToValidPattern(p5, 0);
  // assertTrue(p5Extended.equals(p5));
  //
  // Integer[] a6 = new Integer[] {4, 5};
  // Set<Integer> p6 = new HashSet<Integer>(Arrays.asList(a6));
  // Set<Integer> p6Extended = pdbSearch.extendToValidPattern(p6, 4);
  // assertTrue(p6Extended.equals(p6));
  //
  // // Test 2
  // System.out.println("Test 2");
  // sasFile = getClass().getResourceAsStream("../../../data/pond/mini_sensing3.sas");
  // parser = new SasParser();
  // problem = parser.parse(sasFile);
  // problem.finishInitializationAndPreprocessing();
  // pdbSearch = new PatternCollectionSearch(problem);
  // a1 = new Integer[] {2, 3};
  // p1 = new HashSet<Integer>(Arrays.asList(a1));
  // p1Extended = pdbSearch.extendToValidPattern(p1, 3);
  // System.out.println("p1 extended: " + p1Extended);
  // assertTrue(p1Extended.size() == 3 && p1Extended.contains(1));
  // a2 = new Integer[] {0, 2, 3};
  // p2 = new HashSet<Integer>(Arrays.asList(a2));
  // p2Extended = pdbSearch.extendToValidPattern(p2, 3);
  // System.out.println("p2 extended: " + p2Extended);
  // assertTrue(p2Extended.size() == 4 && p2Extended.contains(1));
  // }
}
