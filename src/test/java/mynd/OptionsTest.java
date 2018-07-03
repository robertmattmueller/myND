package mynd;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintStream;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Set;

import mynd.MyNDPlanner.HeuristicEstimator;
import mynd.heuristic.FFHeuristic;
import mynd.heuristic.HMaxHeuristic;
import mynd.heuristic.LMCutHeuristic;
import mynd.heuristic.ZeroHeuristic;
import mynd.heuristic.pdb.BeliefStatePDB;
import mynd.heuristic.pdb.CanonicalPDBHeuristic;
import mynd.search.*;
import mynd.search.AbstractSearch.Result;
import mynd.search.FIPSearch.AlgorithmWeak;
import mynd.search.weak.FailState.SearchDirection;
import mynd.symbolic.BeliefState;

import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;

/**
 *
 * @author Manuela Ortlieb
 *
 */

public class OptionsTest {

  /**
   * Redirect System.out prints to a file with name "filename". Use deleteOutputFile(filename) to
   * delete the file afterwards. You have to restore the original System.out if you want to print to
   * console after using this method.
   *
   * @throws FileNotFoundException
   */
  private void printSystemOutToFile(String filename) throws FileNotFoundException {
    File file = new File(filename);
    PrintStream printStream = new PrintStream(new FileOutputStream(file));
    System.setOut(printStream);
  }

  private String toAbsolute(String resFile){
    File file = new File(getClass().getClassLoader().getResource
            (resFile).getFile());
    return file.getAbsolutePath();
  }

  /**
   * Delete the file "filename".
   */
  private void deleteOutputFile(String filename) {
    File file = new File(filename);
    file.delete();
  }

  @Before
  public void setUp() {
    MyNDPlanner.testMode = true;
  }

  @Test
  public void testOptionComputeCosts() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    printSystemOutToFile("suppress.mynd.txt");

    String filename = toAbsolute("fond/test.sas");

    // Positive test
    String[] args = {"-search", "LAOSTAR", "-computeCosts",
           filename};
    MyNDPlanner planner = new MyNDPlanner(args);
    planner.runProblem();
    assertNotNull(planner.getSearch().getPlanCost());

    // Negative test
    String[] args2 = {"-search", "LAOSTAR", filename};
    planner = new MyNDPlanner(args2);
    planner.runProblem();
    assertNull(planner.getSearch().getPlanCost());
    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testDumpPlanFOND() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    // FOND test (positive)
    String[] args = {"-search", "LAOSTAR", "-dumpPlan", toAbsolute
            ("fond/test.sas")};
    String path = "checkdumpplan.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    planner.runProblem();
    System.out.flush();
    FileReader fileReader = new FileReader(path);
    BufferedReader bufferedReader = new BufferedReader(fileReader);
    String line;
    boolean found = false;
    do {
      line = bufferedReader.readLine();
      if (line != null && line.contains("%%")) {
        line = bufferedReader.readLine();
        if (line.contains("policy")) {
          found = true;
          break;
        }
      }
    } while (line != null);
    bufferedReader.close();
    assertEquals(true, found);


    // FOND test (positive)
    String[] args2 = {"-search", "LAOSTAR", toAbsolute("fond/test.sas")};
    path = "checkdumpplan.mynd.txt";
    printSystemOutToFile(path);
    planner = new MyNDPlanner(args2);
    planner.runProblem();
    System.out.flush();
    fileReader = new FileReader(path);
    bufferedReader = new BufferedReader(fileReader);
    found = false;
    do {
      line = bufferedReader.readLine();
      if (line != null && line.contains("%%")) {
        line = bufferedReader.readLine();
        if (line.contains("policy")) {
          found = true;
          break;
        }
      }
    } while (line != null);
    bufferedReader.close();
    assertEquals(false, found);
    System.setOut(sysOut);
  }

  @Test
  public void testDumpPlanPOND() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    // POND test (positive)
    String[] args = {"-search", "LAOSTAR", "-dumpPlan", toAbsolute
            ("pond/bw-test-3.sas")};
    String path = "checkdumpplan.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    planner.runProblem();
    System.out.flush();
    FileReader fileReader = new FileReader(path);
    BufferedReader bufferedReader = new BufferedReader(fileReader);
    String line;
    boolean found = false;
    do {
      line = bufferedReader.readLine();
      if (line != null && line.contains("if")) {
        line = bufferedReader.readLine();
        if (line.contains("then")) {
          found = true;
          break;
        }
      }
    } while (line != null);
    bufferedReader.close();
    assertEquals(true, found);

    // POND test (negative)
    String[] args2 = {"-search", "LAOSTAR", toAbsolute("pond/bw-test-3.sas")};
    path = "checkdumpplan.mynd.txt";
    printSystemOutToFile(path);
    planner = new MyNDPlanner(args2);
    planner.runProblem();
    System.out.flush();
    fileReader = new FileReader(path);
    bufferedReader = new BufferedReader(fileReader);
    found = false;
    do {
      line = bufferedReader.readLine();
      if (line != null && line.contains("if")) {
        line = bufferedReader.readLine();
        if (line.contains("then")) {
          found = true;
          break;
        }
      }
    } while (line != null);
    bufferedReader.close();
    assertEquals(false, found);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testExportPlan() throws IOException {
    PrintStream sysOut = System.out;
    // POND test (positive)
    String[] args =
      {"-search", "LAOSTAR", "-exportPlan", "mynd-test-plan.plan",
              toAbsolute("fond/test.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    planner.runProblem();
    File f = new File("mynd-test-plan.plan");
    assertTrue(f.exists());
    deleteOutputFile("mynd-test-plan.plan");
    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testExportDot() throws IOException {
    PrintStream sysOut = System.out;
    // POND test (positive)
    String[] args =
      {"-search", "LAOSTAR", "-exportDot", "mynd-test-plan.dot", toAbsolute("fond/test" +
              ".sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    planner.runProblem();
    File f = new File("mynd-test-plan.dot");
    assertTrue(f.exists());
    deleteOutputFile("mynd-test-plan.dot");
    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testTimeout() throws IOException {
    PrintStream sysOut = System.out;
    // POND test (positive)
    String[] args =
      {"-search", "LAOSTAR", "-heuristic", "ZERO", "-timeout", "1",
      toAbsolute("pond/blocksworld_p1.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);

    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.TIMEOUT, result);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testSearchAlgorithmAOStar() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "AOSTAR", toAbsolute("fond/test.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    String[] args2 = {"-search", "AOSTAR",
            toAbsolute("fond/faults_p_1_1.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(Result.DISPROVEN, result);

    String[] args3 = {"-search", "AOSTAR", toAbsolute("pond/bw-test-3.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(Result.DISPROVEN, result);

    String[] args4 = {"-search", "AOSTAR", toAbsolute("pond/ubw_p3-2.sas")};
    planner = new MyNDPlanner(args4);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testSearchAlgorithmLAOStar() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "LAOSTAR", toAbsolute("fond/test.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    String[] args2 = {"-search", "LAOSTAR",
            toAbsolute("fond/faults_p_1_1.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    String[] args3 = {"-search", "LAOSTAR", toAbsolute("pond/rovers-p02.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    String[] args4 = {"-search", "LAOSTAR",
            toAbsolute("pond/tidyup_r2_t2_c2_w2.sas")};
    planner = new MyNDPlanner(args4);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    String[] args5 = {"-search", "LAOSTAR", toAbsolute("pond/ubw_p3-2.sas")};
    planner = new MyNDPlanner(args5);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testSearchAlgorithmFIP() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "FIP", toAbsolute("fond/test.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    String[] args2 = {"-search", "FIP", toAbsolute("fond/faults_p_1_1.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    String[] args3 = {"-search", "FIP", toAbsolute("pond/rovers-p02.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    String[] args4 = {"-search", "FIP", toAbsolute
            ("pond/tidyup_r2_t2_c2_w2.sas")};
    planner = new MyNDPlanner(args4);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    String[] args5 = {"-search", "FIP", toAbsolute("pond/ubw_p3-2.sas")};
    planner = new MyNDPlanner(args5);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testHeuristicFF() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "AOSTAR", "-heuristic", "FF",
            toAbsolute("fond/test_aip08.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    assertTrue(planner.getSearch() instanceof HeuristicSearch);
    assertTrue(((HeuristicSearch) planner.getSearch()).heuristic instanceof FFHeuristic);
    AOStarNode node = (AOStarNode) planner.getSearch().getInitialNode();
    assertEquals(5, (int) node.getHeuristic());
    assertEquals(Result.PROVEN, result);

    String[] args2 =
      {"-search", "AOSTAR", "-heuristic", "FF", "-aggregation", "MAX",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertEquals(5, (int) node.getHeuristic());
    assertEquals(Result.PROVEN, result);

    String[] args3 =
      {"-search", "AOSTAR", "-heuristic", "FF", "-aggregation", "ADD",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() > 5);
    assertEquals(Result.PROVEN, result);

    String[] args4 =
      {"-search", "AOSTAR", "-heuristic", "FF", "-aggregation", "AVERAGE",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args4);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() < 5);
    assertEquals(Result.PROVEN, result);

    String[] args5 =
      {"-search", "AOSTAR", "-heuristic", "FF", "-aggregation", "ADD", "-numWorldStates", "1",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args5);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() <= 5);
    assertEquals(Result.PROVEN, result);

    String[] args6 =
      {"-search", "AOSTAR", "-heuristic", "FF", "-aggregation", "ADD", "-numWorldStates", "100",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args6);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() > 100);
    assertEquals(Result.PROVEN, result);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testHeuristicPDBsFOND() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    String[] args =
      {"-search", "AOSTAR", "-heuristic", "PDBS", "-steps", "0",
              toAbsolute("fond/test_aip08.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    AOStarNode node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() == 3);
    assertEquals(Result.PROVEN, result);

    String[] args2 =
      {"-search", "AOSTAR", "-heuristic", "PDBS", "-patternSearch", "NONE",
      toAbsolute("fond/test_aip08.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() == 3);
    assertEquals(Result.PROVEN, result);

    String[] args3 = {"-search", "AOSTAR", "-heuristic", "PDBS",
            toAbsolute("fond/faults_p_1_1.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertTrue(planner.getSearch() == null);
    assertEquals(Result.DISPROVEN, result);

    String[] args4 =
      {"-search", "AOSTAR", "-heuristic", "PDBS", "-patternSearch", "FO",
      toAbsolute("fond/test_aip08.sas")};
    planner = new MyNDPlanner(args4);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() >= 3);
    assertEquals(Result.PROVEN, result);

    // TODO PO / FO with same pattern collection, but different initial h value

    String[] args5 =
      {"-search", "AOSTAR", "-heuristic", "PDBS", "-patternSearch", "PO",
      toAbsolute("pond/rovers-p02.sas")};
    planner = new MyNDPlanner(args5);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();

    assertEquals(Result.PROVEN, result);
    HeuristicSearch heuristicSearch = (HeuristicSearch) planner.getSearch();
    assertTrue(heuristicSearch.heuristic instanceof CanonicalPDBHeuristic);
    CanonicalPDBHeuristic pdbHeuristic = (CanonicalPDBHeuristic) heuristicSearch.heuristic;
    assertTrue(pdbHeuristic.patterntoPDB.values().iterator().next() instanceof BeliefStatePDB);
    assertTrue(!pdbHeuristic.temporaryPDBs.isEmpty());
    assertTrue(pdbHeuristic.temporaryPDBs.values().iterator().next() instanceof BeliefStatePDB);

    String[] args6 =
      {"-search", "AOSTAR", "-heuristic", "PDBS", "-patternSearch", "FO",
      toAbsolute("pond/rovers-p02.sas")};
    planner = new MyNDPlanner(args6);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();

    assertEquals(Result.PROVEN, result);
    heuristicSearch = (HeuristicSearch) planner.getSearch();
    assertTrue(heuristicSearch.heuristic instanceof CanonicalPDBHeuristic);
    pdbHeuristic = (CanonicalPDBHeuristic) heuristicSearch.heuristic;
    assertTrue(pdbHeuristic.patterntoPDB.values().iterator().next() instanceof BeliefStatePDB);
    assertTrue(MyNDPlanner.testMode);
    assertTrue(Global.options.cachePDBs() && pdbHeuristic.temporaryPDBs.isEmpty());

    System.setOut(sysOut); // Restore System.out

  }

  @Test
  public void testHeuristicZero() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "AOSTAR", "-heuristic", "ZERO",
            toAbsolute("fond/test_aip08.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    AOStarNode node = (AOStarNode) planner.getSearch().getInitialNode();
    assertEquals(1, (int) node.getHeuristic());
    assertTrue(planner.getSearch() instanceof HeuristicSearch);
    HeuristicSearch heuristicSearch = (HeuristicSearch) planner.getSearch();
    assertTrue(heuristicSearch.heuristic instanceof ZeroHeuristic);
    assertEquals(Result.PROVEN, result);
    Queue<AOStarNode> queue = new LinkedList<AOStarNode>();
    HashSet<AOStarNode> seen = new HashSet<AOStarNode>();
    seen.add(node);
    queue.add(node);
    while (!queue.isEmpty()) {
      AOStarNode n = queue.poll();
      assertTrue(n.getHeuristic() <= 1);
      for (Connector out : n.getOutgoingConnectors()) {
        for (AOStarNode child : out.getChildren()) {
          if (!seen.contains(child)) {
            seen.add(child);
            queue.add(child);
          }
        }
      }
    }

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testHeuristicLMCut() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "AOSTAR", "-heuristic", "LMCUT",
            toAbsolute("fond/test_aip08.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    AOStarNode node = (AOStarNode) planner.getSearch().getInitialNode();
    assertEquals(5, (int) node.getHeuristic());
    assertTrue(planner.getSearch() instanceof HeuristicSearch);
    HeuristicSearch heuristicSearch = (HeuristicSearch) planner.getSearch();
    assertTrue(heuristicSearch.heuristic instanceof LMCutHeuristic);
    assertEquals(Result.PROVEN, result);

    String[] args2 =
      {"-search", "AOSTAR", "-heuristic", "LMCUT", "-aggregation", "MAX",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertEquals(5, (int) node.getHeuristic());
    assertEquals(Result.PROVEN, result);

    String[] args3 =
      {"-search", "AOSTAR", "-heuristic", "LMCUT", "-aggregation", "ADD",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() > 5);
    assertEquals(Result.PROVEN, result);

    String[] args4 =
      {"-search", "AOSTAR", "-heuristic", "LMCUT", "-aggregation", "AVERAGE",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args4);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() < 5);
    assertEquals(Result.PROVEN, result);

    String[] args5 =
      {"-search", "AOSTAR", "-heuristic", "LMCUT", "-aggregation", "ADD", "-numWorldStates", "1",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args5);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() <= 5);
    assertEquals(Result.PROVEN, result);

    String[] args6 =
      {"-search", "AOSTAR", "-heuristic", "LMCUT", "-aggregation", "ADD", "-numWorldStates",
        "100", toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args6);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() > 100);
    assertEquals(Result.PROVEN, result);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testHeuristicHMAX() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "AOSTAR", "-heuristic", "HMAX",
            toAbsolute("fond/test_aip08.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    AOStarNode node = (AOStarNode) planner.getSearch().getInitialNode();
    assertEquals(2, (int) node.getHeuristic());
    assertTrue(planner.getSearch() instanceof HeuristicSearch);
    HeuristicSearch heuristicSearch = (HeuristicSearch) planner.getSearch();
    assertTrue(heuristicSearch.heuristic instanceof HMaxHeuristic);
    assertEquals(Result.PROVEN, result);

    String[] args2 =
      {"-search", "AOSTAR", "-heuristic", "HMAX", "-aggregation", "MAX",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertEquals(2, (int) node.getHeuristic());
    assertEquals(Result.PROVEN, result);

    String[] args3 =
      {"-search", "AOSTAR", "-heuristic", "HMAX", "-aggregation", "ADD",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() > 2);
    assertEquals(Result.PROVEN, result);

    String[] args4 =
      {"-search", "AOSTAR", "-heuristic", "HMAX", "-aggregation", "AVERAGE",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args4);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() < 2);
    assertEquals(Result.PROVEN, result);

    String[] args5 =
      {"-search", "AOSTAR", "-heuristic", "HMAX", "-aggregation", "ADD", "-numWorldStates", "1",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args5);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() <= 2);
    assertEquals(Result.PROVEN, result);

    String[] args6 =
      {"-search", "AOSTAR", "-heuristic", "HMAX", "-aggregation", "ADD", "-numWorldStates",
        "100", toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args6);
    result = planner.runProblem();
    assertEquals(true, planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    assertTrue(node.getHeuristic() > 20);
    assertEquals(Result.PROVEN, result);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testAllWorldStates() throws IOException {
    PrintStream sysOut = System.out;
    String[] args =
      {"-search", "AOSTAR", "-heuristic", "FF", "-allWorldStates", "-aggregation", "ADD",
      toAbsolute("pond/test_aip08.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertTrue(planner.getSearch().getInitialNode() instanceof AOStarNode);
    AOStarNode node = (AOStarNode) planner.getSearch().getInitialNode();
    int initH = (int) node.getHeuristic();
    assertTrue(node.state instanceof BeliefState);
    BeliefState initState = (BeliefState) node.state;
    assertTrue(initState.getNumberOfWorldStates() > 1);
    int numWorldStates = (int) initState.getNumberOfWorldStates();
    assertTrue(initH >= numWorldStates);
    assertEquals(Result.PROVEN, result);

    String[] args2 =
      {"-search", "AOSTAR", "-heuristic", "FF", "-allWorldStates", "-aggregation", "MAX",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertTrue(planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    initH = (int) node.getHeuristic();
    initState = (BeliefState) node.state;
    assertTrue(initState.getNumberOfWorldStates() > 1);
    numWorldStates = (int) initState.getNumberOfWorldStates();
    assertTrue(initH < numWorldStates);

    String[] args3 =
      {"-search", "AOSTAR", "-heuristic", "FF", "-numWorldStates", "1000", "-aggregation", "MAX",
      toAbsolute("pond/test_aip08.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertTrue(planner.getSearch().getInitialNode() instanceof AOStarNode);
    node = (AOStarNode) planner.getSearch().getInitialNode();
    int oldInitH = initH;
    initH = (int) node.getHeuristic();
    assertTrue(oldInitH == initH);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testMaxNumberOfNodesToExpand() throws IOException {
    PrintStream sysOut = System.out;
    String[] args =
      {"-search", "LAOSTAR", "-heuristic", "FF", "-maxNumberOfNodesToExpand", "1",
      toAbsolute("fond/blocksworld_p1.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    planner.getSearch();
    int nodeExpansions = AbstractSearch.NODE_EXPANSIONS;

    String[] args2 =
      {"-search", "LAOSTAR", "-heuristic", "FF", "-maxNumberOfNodesToExpand", "10",
      toAbsolute("fond/blocksworld_p1.sas")};
    MyNDPlanner planner2 = new MyNDPlanner(args2);
    Result result2 = planner2.runProblem();
    assertEquals(Result.PROVEN, result2);
    int nodeExpansions2 = AbstractSearch.NODE_EXPANSIONS;
    assertTrue(nodeExpansions2 > nodeExpansions);

    String[] args3 =
      {"-search", "AOSTAR", "-heuristic", "FF", "-maxNumberOfNodesToExpand", "1",
      toAbsolute("pond/ubw_p3-2.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    planner.getSearch();
    nodeExpansions = AbstractSearch.NODE_EXPANSIONS;

    String[] args4 =
      {"-search", "AOSTAR", "-heuristic", "FF", "-maxNumberOfNodesToExpand", "10",
      toAbsolute("pond/ubw_p3-2.sas")};
    planner2 = new MyNDPlanner(args4);
    result2 = planner2.runProblem();
    assertEquals(Result.PROVEN, result2);
    nodeExpansions2 = AbstractSearch.NODE_EXPANSIONS;
    assertTrue(nodeExpansions2 > nodeExpansions);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testSenseFirst() throws FileNotFoundException, IOException {
    PrintStream sysOut = System.out;
    String[] args =
      {"-search", "LAOSTAR", "-heuristic", "FF", "-senseFirst", "OFF",
              toAbsolute("pond/sense.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch().getPolicy().getNumberOfSensingApplication() == 0);

    String[] args2 =
      {"-search", "LAOSTAR", "-heuristic", "FF", "-senseFirst", "ON",
              toAbsolute("pond/sense.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch().getPolicy().getNumberOfSensingApplication() == 1);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testFIPWeakPlanAlgorithm() throws IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "FIP", "-weakPlanAlgorithm", "ASTAR",
            toAbsolute("fond/test.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    FIPSearch fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.weakPlanSearchAlgorithm == AlgorithmWeak.ASTAR);

    String[] args2 = {"-search", "FIP", "-weakPlanAlgorithm", "WASTAR5",
            toAbsolute("fond/test.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.weakPlanSearchAlgorithm == AlgorithmWeak.WASTAR5);

    String[] args3 =
      {"-search", "FIP", "-weakPlanAlgorithm", "WASTAR15", toAbsolute
              ("fond/test.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.weakPlanSearchAlgorithm == AlgorithmWeak.WASTAR15);

    String[] args4 =
      {"-search", "FIP", "-weakPlanAlgorithm", "WASTAR50", toAbsolute
              ("fond/test.sas")};
    planner = new MyNDPlanner(args4);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.weakPlanSearchAlgorithm == AlgorithmWeak.WASTAR50);

    String[] args5 = {"-search", "FIP", "-weakPlanAlgorithm", "BFS",
            toAbsolute("fond/test.sas")};
    planner = new MyNDPlanner(args5);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.weakPlanSearchAlgorithm == AlgorithmWeak.BFS);

    String[] args6 = {"-search", "FIP", "-weakPlanAlgorithm", "ENFHC",
            toAbsolute("fond/test.sas")};
    planner = new MyNDPlanner(args6);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.weakPlanSearchAlgorithm == AlgorithmWeak.ENFHC);

    String[] args7 =
      {"-search", "FIP", "-weakPlanAlgorithm", "GREEDYBFS", toAbsolute
              ("fond/test.sas")};
    planner = new MyNDPlanner(args7);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.weakPlanSearchAlgorithm == AlgorithmWeak.GREEDYBFS);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testFIPsearchDirection() throws IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "FIP", "-searchDirection", "GOAL",
            toAbsolute("fond/test.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    FIPSearch fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.searchDirection == SearchDirection.GOAL);

    String[] args2 = {"-search", "FIP", "-searchDirection", "INTENDED",
            toAbsolute("fond/test.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.searchDirection == SearchDirection.INTENDED);

    String[] args3 = {"-search", "FIP", "-searchDirection", "PARENT",
            toAbsolute("fond/test.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.searchDirection == SearchDirection.PARENT);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testFIPQueueType() throws IOException {
    PrintStream sysOut = System.out;
    String[] args = {"-search", "FIP", "-queueType", "FIFO", toAbsolute
            ("fond/test.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    FIPSearch fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.open instanceof LinkedList<?>);

    String[] args2 = {"-search", "FIP", "-queueType", "PRIORITY",
            toAbsolute("fond/test.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.open instanceof PriorityQueue<?>);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testFIPMaxDepth() throws IOException {
    PrintStream sysOut = System.out;
    String[] args =
      {"-search", "FIP", "-maxDepth", "2", "-searchDirection", "PARENT",
      toAbsolute("fond/blocksworld_p1.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    FIPSearch fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.getWeakPlanSearch().maxDepth == 2);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testFIPFailStateHeuristic() throws IOException {
    PrintStream sysOut = System.out;
    String[] args =
      {"-search", "FIP", "-failStateHeuristic", "FF", "-searchDirection", "INTENDED",
      toAbsolute("fond/blocksworld_p1.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    FIPSearch fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.getWeakPlanSearch().failStateHeuristic == HeuristicEstimator.FF);

    String[] args2 =
      {"-search", "FIP", "-failStateHeuristic", "ZERO", "-searchDirection", "INTENDED",
      toAbsolute("fond/blocksworld_p1.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.getWeakPlanSearch().failStateHeuristic == HeuristicEstimator.ZERO);

    String[] args3 =
      {"-search", "FIP", "-failStateHeuristic", "PDBS", "-searchDirection", "INTENDED",
      toAbsolute("fond/blocksworld_p1.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.getWeakPlanSearch().failStateHeuristic == HeuristicEstimator.PDBS);

    String[] args4 =
      {"-search", "FIP", "-failStateHeuristic", "HMAX", "-searchDirection", "INTENDED",
      toAbsolute("fond/blocksworld_p1.sas")};
    planner = new MyNDPlanner(args4);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.getWeakPlanSearch().failStateHeuristic == HeuristicEstimator.HMAX);

    String[] args5 =
      {"-search", "FIP", "-failStateHeuristic", "LMCUT", "-searchDirection", "INTENDED",
      toAbsolute("fond/blocksworld_p1.sas")};
    planner = new MyNDPlanner(args5);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof FIPSearch);
    fip = (FIPSearch) planner.getSearch();
    assertTrue(fip.getWeakPlanSearch().failStateHeuristic == HeuristicEstimator.LMCUT);

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void testPDBHillClimbingSteps() throws IOException {
    PrintStream sysOut = System.out;
    String[] args =
      {"-search", "LAOSTAR", "-heuristic", "PDBS", "-steps", "0",
      toAbsolute("fond/faults_p_1_1.sas")};
    String path = "suppress.mynd.txt";
    printSystemOutToFile(path);
    MyNDPlanner planner = new MyNDPlanner(args);
    Result result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof LAOStarSearch);
    HeuristicSearch search = (HeuristicSearch) planner.getSearch();
    assertTrue(search.heuristic instanceof CanonicalPDBHeuristic);
    CanonicalPDBHeuristic pdbH = (CanonicalPDBHeuristic) search.heuristic;
    for (Set<Integer> pattern : pdbH.temporaryPDBs.keySet()) {
      assertTrue(pattern.size() <= 1);
    }

    String[] args2 =
      {"-search", "LAOSTAR", "-heuristic", "PDBS", "-steps", "2",
      toAbsolute("fond/faults_p_1_1.sas")};
    planner = new MyNDPlanner(args2);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof LAOStarSearch);
    search = (HeuristicSearch) planner.getSearch();
    assertTrue(search.heuristic instanceof CanonicalPDBHeuristic);
    pdbH = (CanonicalPDBHeuristic) search.heuristic;
    for (Set<Integer> pattern : pdbH.temporaryPDBs.keySet()) {
      assertTrue(pattern.size() <= 3);
    }

    String[] args3 =
      {"-search", "LAOSTAR", "-heuristic", "PDBS", "-steps", "5",
      toAbsolute("fond/faults_p_1_1.sas")};
    planner = new MyNDPlanner(args3);
    result = planner.runProblem();
    assertEquals(Result.PROVEN, result);
    assertTrue(planner.getSearch() instanceof LAOStarSearch);
    search = (HeuristicSearch) planner.getSearch();
    assertTrue(search.heuristic instanceof CanonicalPDBHeuristic);
    pdbH = (CanonicalPDBHeuristic) search.heuristic;
    for (Set<Integer> pattern : pdbH.temporaryPDBs.keySet()) {
      assertTrue(pattern.size() <= 6);
    }

    System.setOut(sysOut); // Restore System.out
  }

  @Test
  public void callWithPDDL() throws IOException {
    String[] args =
        {"-search","LAOSTAR", "-heuristic", "PDBS", "-steps","5", "-type",
            "FOND",
            "issue3/list-domain.pddl","issue3/list-p1.pddl"};
    MyNDPlanner planner = new MyNDPlanner(args);
  }


  @After
  public void clean() {
    deleteOutputFile("suppress.mynd.txt");
    deleteOutputFile("checkdumpplan.mynd.txt");
    MyNDPlanner.testMode = false;
  }
}
