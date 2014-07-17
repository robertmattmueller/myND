#!/usr/bin/env python
# -*- coding: latin-1 -*-

import sys
import os

probs = [(operators,faults) for operators in range(1,11) for faults in range(1,operators+1)]
pfiles = ['p_%s_%s.pddl' % (o,f) for o,f in probs]
dfiles = ['d_%s_%s.pddl' % (o,f) for o,f in probs]

instances = zip(probs,pfiles,dfiles)

def process_problem_file(file,num_faults):
    lines = list(open(file,'r'))
    return ''.join(lines[:3] +
                   ['\t(not-last-fault f%s)\n' % f for f in range(1,num_faults+1)] +
                   lines[3:])

def process_domain_file(file,num_faults):
    lines = list(open(file,'r'))
    before_new_predicate = lines[:11]
    new_predicate = ['   (not-last-fault ?f - tfault)\n']
    before_actions = lines[11:14]
    action_lines = []
    for flt in range(1,num_faults+1):
        l = 14+(flt-1)*7
        u = l+7
        action = lines[l:u]
        relevant_line = action[5]
        relevant_line = relevant_line[:-4] + (' (not (not-last-fault f%s)))))\n' % flt)
        action[5] = relevant_line
        action_lines = action_lines + action
    l = 14+num_faults*7
    u = l+8
    action = lines[l:u]
    relevant_line = action[5]
    relevant_line = '               (not-last-fault f1) ' + relevant_line.lstrip()
    action[5] = relevant_line
    action_lines = action_lines + action
    for flt in range(2,num_faults+1):
        l = 22+num_faults*7+(flt-2)*9
        u = l+9
        action = lines[l:u]
        relevant_line = action[5]
        relevant_line = relevant_line[:-1] + (' (not (not-last-fault f%s))\n' % (flt-1))
        action[5] = relevant_line
        relevant_line = action[6]
        relevant_line = ('               (not-last-fault f%s) ' % flt) + relevant_line.lstrip()
        action[6] = relevant_line
        action_lines = action_lines + action
    l = 22+num_faults*7+(num_faults-1)*9
    u = l+5
    action = lines[l:u]
    relevant_line = action[1]
    relevant_line = relevant_line[:-24] + (' (not-last-fault f%s))\n' % num_faults)
    action[1] = relevant_line
    action_lines = action_lines + action
    lines = before_new_predicate + new_predicate + before_actions + action_lines
    return ''.join(lines)

def swap_files(file,new_content):
    file_orig = file + '.orig'
    os.system('mv %s %s' % (file, file_orig))
    f = open(file,'w')
    print >>f, new_content
    f.flush()
    f.close()

if __name__ == '__main__':
    for (o,f), p, d in instances:
        new_problem = process_problem_file(p,f)
        new_domain  = process_domain_file(d,f)
        swap_files(p,new_problem)
        swap_files(d,new_domain)


