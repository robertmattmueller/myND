#!/usr/bin/env python
# -*- coding: latin-1 -*-

import sys
import os

probs = ['p_%s_%s.pddl' % (x,y) for x in range(1,11) for y in range(1,11)]

def read_pddl(file):
    before = []
    init   = []
    after  = []
    locations = []
    section = 0
    for line in open(file,'r'):
        if section == 0:
            before.append(line.rstrip())
            if line.find('location') != -1:
                assert len(locations) == 0
                locations = get_locations(line)
            if line.strip().startswith('(:init'):
                section = 1
        elif section == 1:
            if line.strip().startswith(')'):
                section = 2
            else:
                init.append(line.strip())
        if section == 2:
            after.append(line.rstrip())
    return before, init, after, locations

def get_pddl(before, init, after):
    result = before + init + after
    return result

def get_locations(line):
    line = line.strip()
    assert line.startswith('(:objects')
    assert line.endswith(' - location')
    return line.split()[1:-2]

def get_fire_locations(init):
    result = []
    for line in init:
        if line.strip().startswith('(fire'):
            loc = line.strip()[6:-1]
            result.append(loc.strip())
    return result

def convert_init(init, locations):
    init = [line for line in init if not line.startswith(';;')]
    fire_locations = get_fire_locations(init)
    non_fire_locations = set(locations) - set(fire_locations)
    init_no_fire = ['(nfire %s)' % loc for loc in non_fire_locations]
    init = init + init_no_fire
    init = ['        %s' % line for line in init]
    return sorted(list(set(init)))

def convert_problem(file):
    file_orig = file + '.orig'
    b, i, a, l = read_pddl(file)
    i = convert_init(i,l)
    lines = get_pddl(b,i,a)
    os.system('mv %s %s' % (file, file_orig))
    f = open(file,'w')
    for line in lines:
        print >>f, line
    f.flush()
    f.close()

if __name__ == '__main__':
    for prob in probs:
        convert_problem(prob)


