#!/usr/bin/env python3
# -*- coding: utf-8 -*-

__author__ = "Robert Mattmueller"

from sys import argv

def location(x,y):
    return 'l_%s_%s' % (x,y)

def road(x1,y1,x2,y2):
    return '(road %s %s)' % (location(x1,y1), location(x2,y2))

def spare(x,y):
    return '(spare-in %s)' % (location(x,y))

def objects(n):
    sep = '\n             '
    return (sep.join([location(x,y) for x in range(1,n+1)
                      for y in range(1,n+2-x)]) + ' - location')

def whitelayer(x,n):
    roads = [road(x,y,x,y+1) for y in range(1,n)]
    if x > 1:
        roads.extend([road(x-1,y,x,y) for y in range(1,n+1,2)])
        roads.extend([road(x,y,x-1,y+1) for y in range(1,n+1,2)])
    spares = []
    if x > 1:
        spares.extend(list(set([spare(x,1), spare(x,n)])))
    return roads + spares

def blacklayer(x,n):
    roads = [road(x-1,y,x,y) for y in range(1,n+1)]
    roads.extend([road(x,y,x-1,y+1) for y in range(1,n+1)])
    spares = [spare(x,y) for y in range(1,n+1)]
    return roads + spares

def layer(x,n):
    if x%2 == 1:
        return whitelayer(x,n)
    else:
        return blacklayer(x,n)

def init(n):
    predicates = ['(vehicle-at %s)' % (location(1,1),)]
    for x in range(1,n+1):
        predicates.extend(layer(x,n+1-x))
    predicates.append('(not-flattire)')
    sep = '\n          '
    return sep.join(predicates)

def goal(n):
    return '(vehicle-at %s)' % (location(1,n),)

def problem(idx):
    n = 2*idx + 1
    template = (
"""(define (problem triangle-tire-%s)
   (:domain triangle-tire)
   (:objects %s)
   (:init %s)
   (:goal %s))""")
    result = template % (idx, objects(n), init(n), goal(n))
    return result

if __name__ == '__main__':
    for idx in range(1,41):
        f = open('p%s.pddl' % idx, 'w')
        print(problem(idx), file=f)        
        f.flush()
        f.close()


