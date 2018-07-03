package mynd.issues;

import mynd.util.Pair;
import org.junit.Test;
import org.junit.Assert;
import java.io.*;
import java.util.ArrayList;

public class issue3 {
  private String toAbsolute(String resFile) {
    File file =
        new File(getClass().getClassLoader().getResource(resFile).getFile());
    return file.getAbsolutePath();
  }


  @Test
  public void testIssue3() throws IOException, InterruptedException {
    String translator = "translator-fond/translate.py";
    String domain = toAbsolute("issue3/list-domain.pddl");
    String instance = toAbsolute("issue3/list-p1.pddl");

    Process p = Runtime.getRuntime()
        .exec("python " + translator + " " + domain + " " + "" + instance);

    BufferedReader br =
        new BufferedReader(new InputStreamReader(p.getInputStream()));
    String line;
    while ((line = br.readLine()) != null) {
      System.out.println(line);
    }


    BufferedReader err =
        new BufferedReader(new InputStreamReader(p.getErrorStream()));

    while ((line = err.readLine()) != null) {
      System.out.println(line);
    }


    //read output and store mutex groups
    ArrayList<ArrayList<Pair<Integer, Integer>>> mutex_groups =
        new ArrayList<>();
    String saspath = "output.sas";
    try (BufferedReader sas_br = new BufferedReader(new FileReader(saspath))) {

      String sas_line;
      ArrayList<Pair<Integer, Integer>> mutex_group = new ArrayList<>();
      Boolean in_group = false;
      int num_facts = 0;
      int mutex_line = 0;
      while ((sas_line = sas_br.readLine()) != null) {
        if (sas_line.equals("end_mutex_group")) {
          in_group = false;
          Assert.assertEquals(mutex_group.size(), num_facts);
          mutex_groups.add(mutex_group);
        }

        if (in_group && mutex_line > 0) {
          String[] split = sas_line.split(" ");
          mutex_group.add(new Pair<>(Integer.parseInt(split[0]),
              Integer.parseInt(split[1])));
          mutex_line++;
        }
        if (in_group && mutex_line == 0) {
          num_facts = Integer.parseInt(sas_line);
          mutex_line++;
        }
        if (sas_line.equals("begin_mutex_group")) {
          mutex_group = new ArrayList<>();
          in_group = true;
          mutex_line = 0;
        }
      }

      Assert.assertEquals(1,mutex_groups.size());
      ArrayList<Pair<Integer, Integer>> should_be = new ArrayList<>();
      should_be.add(new Pair<>(0, 0));
      should_be.add(new Pair<>(0, 1));
      for (ArrayList<Pair<Integer, Integer>> l : mutex_groups) {
        Assert.assertEquals(l.size(),should_be.size());
        for (int i = 0; i < l.size(); i++) {
          Assert.assertEquals(l.get(i), should_be.get(i));
        }
      }

    } catch (IOException e) {
      e.printStackTrace();
    }

  }

}
