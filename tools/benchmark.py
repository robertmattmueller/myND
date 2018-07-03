#!/usr/bin/env python3

import json
import time
import subprocess
import argparse
import os
import sys
import functools

max_configurations = 4

# find a free results folder:
results_folder = ""
limit_to_file = ""
k = 1
while True:
    if os.path.exists(os.path.abspath("results-" + str(k))):
        k += 1
        continue
    results_folder = os.path.abspath("results-" + str(k))
    break

# configure argparser:
parser = argparse.ArgumentParser(description="Benchmark runner")
parser.add_argument("folder", nargs="?",
    default=os.path.normpath(os.path.abspath(os.path.join(os.path.join(os.path.dirname(__file__), ".."),
        "data/benchmarks-pond/"))), help="the folder containing the problems for benchmarking")
parser.add_argument("command-line", nargs=1, help="the command line options passed to the mynd planner, e.g. \"-laostar -ff\"")
parser.add_argument("--timeout", nargs="?", help="the timeout for each run in minutes. Defaults to 30", default="30")
parser.add_argument("--results-folder", nargs="?", help="the folder where the results of the run will be stored", default=results_folder)
parser.add_argument('--skip-errors', dest='skiperrors', action='store_true')
parser.add_argument('--no-skip-errors', dest='skiperrors', action='store_false')
parser.set_defaults(skiperrors=False)
k = 2
while k <= max_configurations:
    parser.add_argument("--command-line-"  + str(k), nargs="?", help="alternate configuration " + str(k), default="")
    k = k + 1

# get arguments:
resulting_args = parser.parse_args()

# get results folder option:
results_folder = getattr(resulting_args, "results_folder")

# get skip errors option:
skip_errors = getattr(resulting_args, "skiperrors")

# ensure specified benchmark folder exists:
if not os.path.exists(resulting_args.folder):
    print("Error: given benchmark folder doesn't exist: " + \
        resulting_args.folder)
    sys.exit(1)

# if benchmark folder is a file, limit run to file:
if os.path.isfile(resulting_args.folder):
    limit_to_file = os.path.basename(resulting_args.folder)
    print("Will do a run limited to file: " + limit_to_file)
    resulting_args.folder = os.path.dirname(resulting_args.folder)

# get timeout value:
timeout = int(resulting_args.timeout)
subprocess.TimeoutExpired

configurations = []
k = 1
while k <= max_configurations:
    command_line = None
    if k == 1:
        command_line = getattr(resulting_args, "command-line")[0]
    else:
        command_line = getattr(resulting_args, "command_line_" + str(k))
    
    if command_line == "":
        k += 1
        continue

    # split up cmd arguments:
    cmd_args = []
    i = 0
    current_arg = ""
    quote_active = None
    backslash_escape = False
    while i <= len(command_line):
        # process end of argument:
        end_of_argument = False
        if i == len(command_line):
            end_of_argument = True
        elif command_line[i] == " " and quote_active == None and \
                not backslash_escape:
            end_of_argument = True
        if end_of_argument:
            if len(current_arg) > 0:
                cmd_args.append(current_arg)
            current_arg = ""
        if i >= len(command_line):
            break
        # process backslash escape:
        if command_line[i] == "\\" and not backslash_escape:
            backslash_escape = True
            i = i + 1
            continue
        # process " and ' quoting:
        is_quote = False
        if quote_active == None:
            if command_line[i] == '"' and not backslash_escape:
                quote_active = '"'
                is_quote = True
            elif command_line[i] == "'" and not backslash_escape:
                quote_active = "'"
                is_quote = True
        elif command_line[i] == quote_active and not backslash_escape:
            quote_active = None
            is_quote = True
        # process regular characters:
        if command_line[i] != " " or quote_active != None:
            current_arg = current_arg + command_line[i]
        
        backslash_escape = False
        i = i + 1
    configurations.append(cmd_args)    
    k += 1

assert(len(configurations) > 0)

# get a list of all problems to be run:
problem_list = []
for root, dirs, files in os.walk(resulting_args.folder, topdown=False):
    for name in files:
        if name.lower().endswith(".sas"):
            if len(limit_to_file) == 0:
                problem_list.append(os.path.join(root, name))
            else:
                if os.path.normpath(os.path.join(root, name)) == \
                        os.path.normpath(os.path.join(resulting_args.folder,\
                        limit_to_file)):
                    problem_list.append(os.path.join(root, name))

# sort problems to do all the short ones first, then progressively advance to
# the more complex instances:
def numericparts(path):
    if path.lower().endswith(".sas"):
        path = path[:len(path) - len(".sas")]
    path = path.replace("-", " ")
    path = path.replace("_", " ")
    path = path.replace(".", " ")
    path = path.replace("/", " ")
    parts = path.split(" ")
    found_numerics = False
    nonnumeric_parts = []
    i = len(parts) - 1
    while i >= 0:
        numericstr = ""
        numerics = 0
        nonnumerics = 0
        k = 0
        while k < len(parts[i]):
            if ord(parts[i][k]) >= ord("0") and ord(parts[i][k]) <= ord("9"):
                numerics += 1
                numericstr += parts[i][k]
            else:
                nonnumerics += 1
            k += 1
        if nonnumerics > numerics:
            if found_numerics:
                # stop here. we went through all appended numeric parts
                nonnumeric_parts = parts[:(i+1)] + nonnumeric_parts
                parts = parts[(i+1):]
            else:
                # just skip, we still haven't encountered a numeric part
                nonnumeric_parts = [parts[len(parts) - 1]] + nonnumeric_parts
                parts = parts[:len(parts) - 1]
                i -= 1
                continue
            break
        found_numerics = True
        try:
            parts[i] = int(numericstr)
        except ValueError:
            parts[i] = 0 
        i -= 1
    return (parts, nonnumeric_parts)

def order_by_numeric_part(part1, part2):
    i = 0
    while i < len(part1) and i < len(part1):
        if part1[i] != part2[i]:
            if part1[i] < part2[i]:
                return -1
            else:
                return 1
        i += 1
    if len(part1) < len(part2):
        return -1
    elif len(part2) < len(part2):
        return 1
    else:
        return 0

rank_order_cache = dict()
def get_rank_order(item):
    item_parts = numericparts(item)
    rank = 0
    if not (" ".join(item_parts[1]) in rank_order_cache):
        rank_order_cache[" ".join(item_parts[1])] = []
        for entry in problem_list:
            if entry == item:
                continue
            parts = numericparts(entry)
            if " ".join(parts[1]) == " ".join(item_parts[1]):
                rank_order_cache[" ".join(item_parts[1])].append(
                    parts[0])
    for parts in rank_order_cache[" ".join(item_parts[1])]:
        if order_by_numeric_part(item_parts[0], parts) > 0:
            rank += 1
    return rank

def customsort(a, b):
    if a == b:
        return 0
    rank_a = get_rank_order(a)
    rank_b = get_rank_order(b)
    if rank_a == rank_b:
        if a < b:
            return -1
        return 1
    elif rank_a < rank_b:
        return -1
    else:
        return 1

problem_list = sorted(problem_list, key=functools.cmp_to_key(customsort))

# create output directory:
if not os.path.exists(results_folder):
    os.mkdir(results_folder)
print("Results folder: " + results_folder)
assert(os.path.exists(results_folder))

# evaluation of results:
class BenchmarkResults(object):
    def __init__(self, output):
        self.output = output
        try:
            self.output = self.output.decode("utf-8", "ignore")
        except (AttributeError, ValueError):
            pass
        if output == None:
            self.solved = False
            self.aborted = True
            self.extradata = ""
            return
        self.aborted = False
        self.searchalgorithm = "unknown"
        if self.output.find(" LAO*-search") >= 0:
            self.searchalgorithm = "LAOStar"
        elif self.output.find(" AO*-search") >= 0:
            self.searchalgorithm = "AOStar"
        self.output = output.decode("utf-8", "ignore")
        if self.output.find("*** CEGAR: new round") >= 0:
            self.cegar = True
        else:
            self.cegar = False
        if self.cegar:
            if self.output.find(
                    "*** CEGAR: no more plan inconsistencies found. " + \
                    "Problem is solvable.") >= 0:
                self.solved = True
            else:
                self.solved = False 
        else:
            if self.output.find(
                    "Strong cyclic plan found") >= 0:
                self.solved = True
            else:
                self.solved = False
        self.extradata = {}
        self.extradata["cegarused:"] = self.cegar
        if self.cegar:
            # count how often CEGAR refined:
            self.cegarrefinements = self.output.count("new round") - 1
            self.extradata["cegarrefinements"] = \
                int(self.cegarrefinements)
            # report the exact patterns used:
            self.cegarpatterns = []
            lines = self.output.replace("\r\n", "n").split("\n")
            for line in lines:
                line = line.strip()
                if line.find("CEGAR") >= 0 and \
                        line.find("current abstraction pattern") >= 0:
                    if line.find("[") >= 0:
                        line = line[line.find("[") + 1:]
                    if line.endswith("]"):
                        line = line[:-1]
                    try:
                        patternvars = [int(var) for var in line.split(", ")]
                        self.cegarpatterns.append(patternvars)
                    except ValueError:
                        pass
            self.extradata["cegarpatterns"] = self.cegarpatterns
        self.extradata = json.dumps(self.extradata)

# run all problems:
for problem in problem_list:
    original_path = os.getcwd()
    os.chdir(os.path.join(os.path.join(os.path.dirname(__file__), ".."), "src"))
    confignumber = 0
    for configuration in configurations:
        confignumber += 1
        print("Running problem: " + problem)
        print("Configuration: " + str(configuration))
        output = None
        time_used = 0

        def write_output_to_file(output):
            output_file_path = os.path.join(results_folder,
                "stdout" + \
                "-" + problem.replace("/", "-").replace("\\", "-") + \
                "-configuration" + str(confignumber) + \
                ".txt")
            with open(output_file_path, "w") as output_file:
                start_line = "stdout of config " + str(configuration) + \
                    " of problem " + problem
                if output != None:
                    output_file.write(start_line + ":\n")
                    output_file.write(output.decode("utf-8", "ignore"))
                else:
                    output_file.write(start_line + ": NONE (timeout)")

        try:
            try:
                start = time.monotonic()
                output = subprocess.check_output(
                    [ "java", "mynd.MyNDPlanner" ] + \
                    configuration + [ problem ],
                    shell=False,
                    timeout=timeout * 60,
                    stdin=open(os.devnull),
                    stderr=subprocess.STDOUT)
                time_used = (time.monotonic() - start)
                print("Finished after " + \
                    ('%.2f' % time_used) + " seconds")
            except subprocess.CalledProcessError as e:
                time_used = (time.monotonic() - start)
                if e.returncode == 4:
                    output = e.output
                    pass
                else:
                    if not skip_errors:
                        # make sure stdout/stderr is saved since we will quit:
                        write_output_to_file(e.output)
                    raise e 
            except subprocess.TimeoutExpired as e:
                output = e.output
                time_used = timeout * 60
                print("Timeout exceeded (" + str(timeout * 60) +\
                    " seconds). Aborted.")
        except Exception as e:
            if skip_errors:
                print("Encountered an exception:")
                print("  Configuration: " + str(configuration))
                print("  Problem: " + problem)
                print("Skipping error...")
            else:
                print("Encountered an exception:")
                print("  Configuration: " + str(configuration))
                print("  Problem: " + problem)
                print("Propagating error, get ready for termination...")
                raise e

        # evaluate stdout/stderr and write to file:
        write_output_to_file(output)
        
        # evaluate output and write CSV:
        csv_file_path = os.path.join(results_folder,
            "results" + \
            "-" + problem.replace("/", "-").replace("\\", "-") + \
            "-configuration" + str(confignumber) + \
            ".csv")

        results = BenchmarkResults(output)
        print("Plan found: " + str(results.solved))

        with open(csv_file_path, "w") as csv_file:
            csv_file.write(
                "\"" + problem.replace("\"", "\"\"") + "\", " + \
                "\"" + " ".join(configuration).replace("\"", "\"\"") + \
                    "\","+ \
                ("plan found" if results.solved else \
                    ("no plan found" if not results.aborted else \
                    "timeout exceeded")) + \
                    "," + \
                str(time_used) + ",\"" + \
                str(results.extradata.replace("\"", "\"\"") + "\"\r\n"))
        print("")
    os.chdir(original_path)


