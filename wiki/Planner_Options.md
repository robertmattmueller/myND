# Planner options 
----
***Notes***:

* Starting the planner from the command line requires either escaping of parentheses occuring in options or using quotes.
* The only required planner option is the path to the SAS+ input file, for all other options there are default settings.

# Search algorithms 
----
By ***default*** LAO*-search is used, and a strong cyclic plan is computed.

## AO* 
Use AO* search to find strong plans.


```
#!bash

-aostar
```

## LAO* 
Use LAO* search to find strong cyclic plans.

```
#!bash

-laostar
```

## Node expansions during (L)AO*-search 

The following option can be used to determine how many nodes are expanded at most in one iteration.

```
#!bash

[-maxNumberOfNodesToExpand INTEGER]
```

* `-maxNumberOfNodesToExpand INTEGER` Maximal number of nodes of the AND/OR-graph which are expanded in *one iteration*. ***Default:*** 1.



# Heuristics 
----
By ***default*** the blind 0/1-heuristic is used.

## 0/1 
A blind heuristic, where non-goal states get assigned a heuristic value of 1, and goal nodes get assigned a heuristic value of 0.

```
#!bash

-zero
```

## FF heuristic
Relaxed planning graph heuristic as implemented in the FF planning system by Jörg Hoffmann. All-outcome determinization for nondeterministic effects is used.

```
#!bash

-ff [-max] [-add] [-average] [-numWorldStates INTEGER] [-allWorldStates]
```

## Max heuristic
Forward cost heuristic based on relaxed planning graph. All-outcome determinization for nondeterministic effects is used.

```
#!bash

-hmax [-max] [-add] [-average] [-numWorldStates INTEGER] [-allWorldStates]
```


### POND Options 
These options are **only** useful for **POND** planning. They control how to aggregate heuristic values of world states in a belief state B when computing a heuristic value for B.

* `-max` Use the maximum heuristic value of the world states in B.

* `-add` Use the sum of the heuristic values of the world states in B.

* `-average` Use the average of the heuristic values of the world states in B.

* `-numWorldStates INTEGER` Number of world state samples to be drawn randomly from a belief state. ***Default:*** 10.

* `-allWorldStates` All world states are sampled (without replacement) from a belief state. Generally, this is not useful.

Only one of the options `-max`, `-add` or `-average` could be chosen. ***Default:*** `-max`.

## Pattern Databases 


```
#!bash

-pdbs [-steps INTEGER] [-pdbTimeout INTEGER] [-pdbMaxSize INTEGER] [-pdbsMaxSize INTEGER] [-minImprovement DOUBLE] [-noCachingOfPDBs] [-assumeFO] [-FOPatternSearch] [-RWSamples INTEGER]
```

### Options 

* `-steps INTEGER` Number of hill climbing iterations in pattern search. ***Default:*** infinity.

* `-pdbTimeOut INTEGER` Timeout (in ms) for the pattern selection procedure. ***Default:*** infinity.

* `-pdbMaxSize INTEGER` Maximal number of abstract states induced by a single pattern. ***Default:*** 100,000 for explicit PDBs and 10,000 for symbolic PDBs.

* `-pdbsMaxSize INTEGER` Maximal overall number of abstract states across all PDBs. ***Default:*** 10 * *pdbMaxSize*.

* `-minImprovement DOUBLE[0.0,1.0]` Only if at least the fraction *minImprovement* of the sample states are improved (= higher heuristic value) using the new candidate pattern, then choose it, if it maximizes the number of improved samples. The lower bound 0.0 means that at least **one** sample has to be improved. ***Default:*** 0.1.

* `-noCachingOfPDBs` No caching of temporary pattern databases during pattern collection search. ***Default:*** PDBs are cached.

* `-RWSamples INTEGER` Number of sample states that are collected during random walks. These samples are used to evaluate the quality of a pattern collection during pattern search. ***Default:*** 1,000.

**Example** 

The default configuration when using pattern databases for FOND planning is shown in the following example.

```
#!bash
-pdbs -pdbMaxSize 100000 -pdbsMaxSize 1000000 -minImprovement 0.1 -RWSamples 1000

```


### POND options 

* `-assumeFO` Assume full observability, such that explicit states instead of belief states are used for the PDB heuristic. During search, explicit states are drawn randomly from belief state, and their heuristic values are aggregated. By ***default*** this option is not used. **Note**: In this case it is possible to specify how heuristic values are aggregated. Possible options are `-max`, `-add`, `-average`, `-numWorldStates INTEGER` and `-allWorldStates` as used in FF heuristic. You cannot use the options `-POPatternSearch` or `-FOPatternSearch` together with `-assumeFO`.

* `-FOPatternSearch` Assume full observability only during the pattern search. After choosing the final pattern collection, this assumption is refused, such that the final pattern databases are symbolic and the knowledge about partial observability is contained in the heuristic value. In general this approach performs better than using symbolic pattern databases during the pattern selection process. By ***default*** this option is used.

* `-POPatternSearch` Pattern search is done in the belief space differently from `-FOPatternSearch`. This could lead to a more accurate PDB heuristic, but is less efficient in time and space than using a fully observable pattern search. By ***default*** this option is not used.

**Example** 

The default configuration when using pattern databases for POND planning is shown in the following example.

```
#!bash
-pdbs -pdbMaxSize 10000 -pdbsMaxSize 100000 -minImprovement 0.1 -RWSamples 1000 -FOPatternSearch

```


# Partial Observability

---

Besides the POND options of the heuristic section, we have more POND options:

```
#!

[-sensingFirst]
```

* *-sensingFirst*: Prefer sensing actions over other actions. This reduces the branching factor as follows: If at least one sensing action is applicable that leads to a nontrivial splitting of the current belief state, commit to such an action (and disregard all other sensing actions as well as all non-sensing actions). If no sensing action is applicable, expand current belief state as usually. By **default** this option is not used.
