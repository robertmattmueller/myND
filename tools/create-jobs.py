#! /usr/bin/env python
# -*- coding: utf-8 -*-

import os
import subprocess
from Cheetah.Template import Template

print("")
print("-- Grid job generation script --")
print("This script will ask all necessary grid options, and then write a job file for you.")
print("You can always abort by pressing CTRL + C.")
print("")

def choose_unchecked(desc, choices, freeinput=True):
    """ Allow the user to choose from a given set of choices, with an optional
        free form input option if enabled.
        Choices must be an iterable with string elements.
        Returns the choice as a string.
    """
    while True:
        print("Please choose " + desc + ":")
        index = 0
        for choice in choices:
            print(str(index + 1) + ": " + choice)
            index += 1
        if freeinput:
            print(str(index) + ": <enter a custom value>")
        result = raw_input("Enter the number of your choice: ")
        result_id = None
        try:
            result_id = int(result)
        except (ValueError, TypeError):
            pass
        if result_id != None:
            result_id -= 1
            if result_id != index or not freeinput:
                if result_id < 0 or result_id >= len(choices):
                    result_id = None
        if result_id == None:
            print("Invalid choice, not a number or exceeds range.")
            continue
        if result_id == index and freeinput:
            freeform = raw_input("Enter your custom value: ")
            return freeform
        return choices[result_id]

def strisint(v):
    if len(v) == 0:
        return False
    for c in v:
        if ord(c) < ord('0') or ord(c) > ord('9'):
            return False
    return True

def nonempty_check(value):
    if len(value) == 0:
        return "you provided an empty value"
    return None

def choose(desc, choices, func=nonempty_check, freeinput=True,\
        default=None):
    while True:
        result = choose_unchecked(desc, choices)
        fault = func(result)
        if fault != None:
            print("This value is invalid: " + str(fault))
            continue
        return result
         

# defines which queue to use for one task. Possible values are "athlon.q" and
# "athlon_core.q". The former value configures the use of a whole cpu,
# while the latter option configures the use of a single cpu core.
queue = choose("the task queue", [ "athlon_core.q", "athlon.q" ])
print("")

# defines the timeout for one taks. The time format is
# "hours:minutes:seconds", eg, a value of "0:30:0" sets the timeout to
# 30 minutes. If timout is set to None, then there is no timeout.
def timeout_check(value):
    fault_msg = "not of format hours:minute:seconds"
    parts = value.split(":")
    if len(parts) != 3:
        return fault_msg
    for part in parts:
        if not strisint(part):
            return fault_msg
    return None
timeout = choose("timeout for one run as hours:minute:seconds",
    [ "0:30:0", "0:10:0" ], func=timeout_check)
print("")

# defines the maximum amount of available memory for one task. The
# value's format is either "<mem>M" or "<mem>G", where <mem> is an
# integer number, M stands for MByte and G for GByte. If memout is
# None, then there is no memory bound.
def memout_check(value):
    fault_msg = "not of format <mem>M or <mem>G"
    if not value.endswith("G") and (not value.endswith("M")):
        return fault_msg
    if not strisint(value[:-1]):
        return fault_msg
    return None
memout = choose("amount of memory as \"<mem>M\" (megabyte) or " +\
    "\"<mem>G\" (gigabyte)", [ "2048M", "1024M", "512M" ], func=memout_check)
print("")

# configurations can be either from a few predefined sets, or manually entered
presets = {
    "cegar for unsolvability vs regular" : {
        "config-1" : "-search LAOSTAR -heuristic FF -ca UNSOLVABILITY_OVERAPPROXIMATION",
        "config-2" : "-search LAOSTAR -heuristic FF",
    }
}
print("You can now pick a fixed benchmark preset of configurations for " +\
    "various purposes, or manually enter all configurations.")
configuration_preset = choose("configuration preset",
    presets.keys() + ["manual"], freeinput=False)
print("")

def unsafe_shell_escape(value, space=False):
    value = value.replace("\\", "\\\\").\
        replace('"', "\"").replace("$", "\$")
    if space:
        value = value.replace(" ", "\\ ")
    return value

configs = {}
if configuration_preset == "manual":
    # manual entering of mynd configurations to be used:
    print("Please enter all configurations (command line parameters for each) "+\
        "which you want to run. When you are done, enter an empty line.")
    configs = {}
    i = 1
    while True:
        config = raw_input("Configuration " + str(i) + ": ")
        if len(config.strip()) == 0:
            break
        configs["config-" + str(i)] = unsafe_shell_escape(config.strip())
        i += 1
    print("")
else:
    configs = presets[configuration_preset]

# Command line for running the mynd planner:
cmdline = "tools/benchmark.py"

# The local folder containing mynd:
mynd_folder_local = os.path.normpath(os.path.abspath(os.path.join(os.path.dirname(
    __file__), "..")))

# the folder containing mynd on the grid:
print("Now enter the full directory where mynd will "+\
    "be located on the grid.")
print("If you are running this script on the grid "+\
    "right now, just press enter to use the default."
)
print(" (default is: " + mynd_folder_local + ")")
mynd_folder_grid = raw_input("mynd directory path: ")
if len(mynd_folder_grid) == 0:
    mynd_folder_grid = mynd_folder_local

# The problems folder as used at runtime by the task (relative to the
# mynd folder):
problems_folder = "data/"

# The output folder (relative to mynd folder on the grid):
output_folder = "results/"

# the create_tasks functions generates a file containing all possible
# combinations of configurations and benchmarks. The resulting job
# file <filename> can then be submitted with
#
# > qsub <filename>
#
# given a configuration and a benchmark, eg, configuration['config-1']
# and benchmarks['C1'], the following command will be executed on the
# GKIGrid:
#
# > mcta -o2 -h1 -b -q C1.ta C.q &> config-1/C1-$JOB_ID.$SGE_TASK_ID.result
#
# the expressions $JOB_ID and $SGE_TASK_ID will be replaced by the
# grid engine. The $JOB_ID is the same for all tasks of the jobfile,
# the $SGE_TASK_ID is the id for the current task.
if __name__ == "__main__":
    tasks = []
    
    # obtain all problems:
    problems_scan_folder = os.path.join(mynd_folder_local, problems_folder)
    print(("Scanning folder %s for problems...") % \
        (problems_scan_folder))
    problem_count = 0
    files = []
    for root, dirs, dfiles in os.walk(problems_scan_folder):
        for f in dfiles:
            full_path = os.path.join(root, f)
            if full_path.endswith(".sas"):
                files.append(
                    os.path.join(
                        os.path.relpath(
                            os.path.dirname(full_path),
                            mynd_folder_local),
                        os.path.basename(full_path)
                    )
                )

    # write file:
    problem_count = 0
    total_task_count = 0
    config_count = 0
    for problem in files:
        problem = problem.strip()
        if len(problem) == 0:
            continue

        if not os.path.isabs(problem):
            problem = os.path.join(mynd_folder_grid, problem)

        problem_count = problem_count + 1
        config_count = 0
        for config in configs.values():
            config_count = config_count + 1
            total_task_count = total_task_count + 1
            tasks.append(
                "cd %s && %s --results-folder \"%s\" -- \"%s\" \" %s\" > %s"
                % (
                mynd_folder_grid, cmdline,
                os.path.join(mynd_folder_grid, output_folder),
                unsafe_shell_escape(problem),
                unsafe_shell_escape(config),
                unsafe_shell_escape(os.path.join(output_folder,
                "stdout-job"), space=True)))
    template = Template(file='job.tmpl',
                        searchList=[{'tasks'   : tasks,
                                     'queue'   : queue,
                                     'timeout' : timeout,
                                     'memout'  : memout}])
    print("Found %d problems after scanning folder %s." % ( \
        problem_count, problems_scan_folder)) 
    print("With %d configs, this results in %d tasks in total." % \
        (config_count, total_task_count))
    print("Writing job.q file...")
    f = file("job.q", 'w')
    f.write(str(template))
    f.close()
    print("Done.")
