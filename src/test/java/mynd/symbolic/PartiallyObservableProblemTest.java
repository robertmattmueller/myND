package mynd.symbolic;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.io.*;
import java.util.SortedSet;
import java.util.TreeSet;

import mynd.Global;
import mynd.Options;
import mynd.explicit.ExplicitOperator;
import mynd.heuristic.pdb.Abstraction;
import mynd.parser.SasParser;
import mynd.problem.Problem;
import mynd.state.Operator;

import org.junit.Test;

public class PartiallyObservableProblemTest {

  private String toAbsolute(String resFile){
    File file = new File(getClass().getClassLoader().getResource
            (resFile).getFile());
    return file.getAbsolutePath();
  }

  private void testOperatorAbstractToPattern(String file) throws FileNotFoundException, IOException {
    // Parse a test POND problem.
    String filename = toAbsolute(file);
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();

    // Build a pattern containing all state variables.
    SortedSet<Integer> pattern = new TreeSet<Integer>();
    for (int i = 0; i < problem.numStateVars; i++) {
      pattern.add(i);
    }

    // Abstract every single operator and compare concrete op and abstracted op
    for (Operator op : problem.getOperators()) {
      SymbolicOperator symbolicOp = (SymbolicOperator) op;
      SymbolicOperator absSymOp = symbolicOp.abstractToPattern(pattern);
      assertEquals(symbolicOp, absSymOp);
      ExplicitOperator explicitOp = symbolicOp.getExplicitOperator();
      ExplicitOperator absExpOp = explicitOp.abstractToPattern(pattern);
      assertEquals(explicitOp, absExpOp);
    }
  }

  private void testAbstractToPattern(String file) throws FileNotFoundException, IOException {
    // Parse a test POND problem.
    String filename = toAbsolute(file);
    InputStream sasFile = new FileInputStream(new File(filename));
    Global.options = new Options();

    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);
    problem.finishInitializationAndPreprocessing();
    // Global.problem.dump();

    // Build a pattern containing all state variables.
    SortedSet<Integer> pattern = new TreeSet<Integer>();
    for (int i = 0; i < problem.numStateVars; i++) {
      pattern.add(i);
    }
    Abstraction abs = problem.abstractToPattern(pattern);
    assertNotNull(abs);
    // System.out.println();
    // abs.dump();

    // Compare all abstracted components with the original components.

    // 1. Variables
    assertEquals(problem.numStateVars, abs.pattern.size());

    // 2. Initial state
    assertEquals(1, abs.getInitialState().size());
    assertEquals(problem.getSingleInitialState(), abs.getInitialState().get(0));

    // 3. Goal
    assertEquals(problem.getGoal(), abs.goal);

    // 4. Operators
    assertEquals(problem.getOperators().size(), abs.operators.size());
    assertEquals(problem.getOperators(), abs.operators);
  }

  @Test
  public void testAbstractToPatternOnSomeProblems() throws FileNotFoundException, IOException {
    String[] problems =
      {"pond/bw_sense_clear_p1.sas", "pond/blocksworld_p1.sas",
        "pond/ctp_00_20_T.sas", "pond/fr-p_3_8.sas",
        "pond/rovers-p02.sas", "pond/tidyup_r2_t2_c2_w2.sas",
      "pond/ubw_p3-2.sas"};
    for (String file : problems) {
      testAbstractToPattern(file);
      testOperatorAbstractToPattern(file);
    }
  }


}
