#!/usr/bin/env python3

import numpy as np
import csv
import time
import subprocess
import argparse
import pylab
import os
import sys
import functools

max_configurations = 4

# find a free results folder:
results_folder = ""
k = 1
while True:
    results_guess = os.path.join(os.path.join(os.path.dirname(__file__), ".."), "results-" + str(k))
    if not os.path.exists(results_guess):
        if k > 1:
            k -= 1
        results_folder = os.path.join(os.path.join(os.path.dirname(__file__), ".."),  "results-" + str(k))
        break
    k += 1

# configure argparser:
parser = argparse.ArgumentParser(description="Benchmark results evaluator")
parser.add_argument("folder", nargs="?", default=results_folder, help="the folder containing the benchmark results")

# get arguments:
resulting_args = parser.parse_args()
results_folder = resulting_args.folder

data = []
removed_data = []

# read and parse all the .csv files and gather the data:
# (they need to be in the format written by benchmark.py)
for path in os.listdir(results_folder):
    path = os.path.join(results_folder, path)
    if not os.path.isfile(path):
        continue
    if not path.endswith(".csv"):
        continue
    contents = None
    with open(path, "r", newline='') as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',', quotechar='\"')
        for row in csv_reader:
            data.append(row)

eliminated_problems = []

def available_configurations():
    """ This returns a set of all configurations present in the evaluated
        data set. Each configuration is returned as a string which contains
        the command line options used with the MyND planner.
    """
    configs = set()
    for entry in data:
        configs.add(entry[1])
    return configs

def eliminate_problems_with_missing_configurations():
    """ Examines the data and removes all problem entries which haven't been
        run with the complete set of configurations.
        This is useful if you ran benchmark.py with --skip-errors and some
        specific configurations failed to run on some problems.
    """
    global data
    configurations = available_configurations()
    def problem_config_count(problem):
        problem_configs = set()
        for entry in data:
            if entry[0] == problem:
                problem_configs.add(entry[1])
        return len(problem_configs)
    for entry in data:
        if problem_config_count(entry[0]) < len(configurations):
            removed_data.append(entry)
    for removed in removed_data:
        data.remove(removed)

eliminate_problems_with_missing_configurations()

def biggest_time():
    """ This returns the longest amount of time that any of the problems
        has needed to be handled (or after which it was aborted).
    """
    t = 0
    for entry in data:
        t = max(t, float(entry[3]))
    return t

def table_latex(configuration):
    """ This returns the latex code for a results table
        with all the results achieved with the given
        configuration.
    """
    s = "Detailed result listings of running the configuration "
    s = s + configuration.replace("_", "\\_") + ":"
    s = s + "\\begin{longtable}{l | l | l}\n"
    s = s + " Problem & Time (s) & Result \\\\ \\hline \\hline \n"
    def shortened_file_name(name):
        while len(name) > 30 and len(name.split("/")) > 0:
            slashpos = name.find("/")
            if slashpos < 0 or slashpos >= len(name):
                break
            name = name[slashpos + 1:]
        if len(name) > 30:
            name = name[:12] + ".." + name[-12:]
        return name

    def entry_to_str(entry):
        return shortened_file_name(entry[0]).replace("_", "\\_") + \
            " & " + str(entry[3]) + " & " + entry[2] + " \\\\"
    for entry in data:
        s = s + entry_to_str(entry) + "\n"
    s = s + "\\end{longtable}"
    if len(removed_data):
        s = s + "\nThe following problems didn't manage to run with all " + \
            "configurations and were omitted:\n\\begin{longtable}{ l }\n"
        s = s + " Problem \\\\ \\hline \\hline \n"
        for removed in removed_data:
            s = s + shortened_file_name(removed[0])
        s = s + "\\end{longtable}"
    return s.encode("utf-8", "ignore")

def entries_handled_by_time(configuration, t):
    """ This returns all entries in the data set which match the given
        configuration and which were successfully handled in less or
        exactly the amount of seconds specified.
    """
    handled = 0
    for entry in data:
        if entry[1] != configuration:
            continue
        if float(entry[3]) < t:
            if entry[2] == "plan found" or entry[2] == "no plan found":
                handled += 1
    return handled

def generate_data_series(configuration):
    """ This generates a data series of all data for the given configuration
        (represented by the given configuration string) as a tuple:
           (np.array of x values, np.array of y values)
    """
    times = []
    for entry in data:
        if entry[1] != configuration:
            continue
        times.append(float(entry[3]) + 0.0001)
    times.sort()
    x = []
    y = []
    for timeentry in times:
        x.append(timeentry)
        y.append(entries_handled_by_time(configuration, timeentry))
    return (np.array(x), np.array(y))

def configuration_to_filename(config):
    config_fname = str(config).replace("-", "_").replace(" ", "_").\
        replace("'", "_").replace('"', "_").replace(".", "_")
    while config_fname.find("__") >= 0:
        config_fname = config_fname.replace("__", "_")
    if config_fname.startswith("_"):
        config_fname = config_fname[1:]
    if config_fname.endswith("_"):
        config_fname = config_fname[:-1]
    return config_fname

# create data tables:
print("Generating latex for result table...")
for configuration in available_configurations():
    fname = results_folder + "/figure_table_results_" + \
        configuration_to_filename(configuration) + ".tex"
    f = open(fname, "wb")
    f.write(table_latex(configuration))
    f.close()
    print(os.path.basename(fname) + " generated.")

print("Generating problems handled per time graph...")

# create problems handled per time graph:
pylab.title("Problems handled per time", size=22)
pylab.xlabel("Time (s)", size=22)
pylab.xscale('log')
pylab.ylabel("Count of problems", size=20)
f = open(results_folder + "/figure_problems_handled_by_time.svg.info.txt", "wb")
plotno = 1
for configuration in available_configurations():
    t = pylab.arange(0.0, biggest_time(), biggest_time() / 16)
    xy = generate_data_series(configuration)
    color = None
    plotdesc = "black line"
    if plotno == 1:
        color = "k-"
        plotdesc = "black continuous line"
    elif plotno == 2:
        color = "k--"
        plotdesc = "black dotted line"
    plotno += 1
    pylab.plot(xy[0], xy[1], color, label="Configuration: " + configuration)
    f.write(("Plotted as " + plotdesc + ": configuration " + configuration).\
        encode("utf-8", 'ascii') + "\n".encode("utf-8", "ascii"))
f.close()

#pylab.legend(loc=4,prop={'size':9})
pylab.savefig(results_folder + "/figure_problems_handled_by_time.svg")
print("figure_problems_handled_by_time.svg generated.")
print("figure_problems_handled_by_time.svg.info.txt generated.")

