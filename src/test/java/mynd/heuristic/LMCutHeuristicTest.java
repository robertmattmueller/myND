package mynd.heuristic;

import args4j.CmdLineException;
import mynd.Global;
import mynd.Options;
import mynd.parser.SasParser;
import mynd.problem.Problem;
import mynd.state.State;
import org.junit.Test;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

public class LMCutHeuristicTest {


  private String toAbsolute(String resFile){
    File file = new File(getClass().getClassLoader().getResource
            (resFile).getFile());
    return file.getAbsolutePath();
  }


  @Test
  public void test5InitHValue() throws IOException, CmdLineException {

    String filename = toAbsolute("fond/test5.sas");
    InputStream sasFile = new FileInputStream(new File(filename));
    SasParser parser = new SasParser();
    Problem problem = parser.parse(sasFile);

    Global.options = new Options();

    problem.finishInitializationAndPreprocessing();
    LMCutHeuristic lmcut = new LMCutHeuristic(problem);
    assertNotNull(lmcut);
    State init = problem.getExplicitInitialStates().get(0);
    assertNotNull(init);
    assertTrue(problem.getExplicitInitialStates().size() == 1);
    System.out.println("Test 5: init h-value " + lmcut.getHeuristic(init));
    assertTrue(lmcut.getHeuristic(init) == 4);
    System.out.println();
  }
}
