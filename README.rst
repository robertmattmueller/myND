This is myND, a FOND and POND planner written in Java.

It was developed at Albert-Ludwigs-Universität Freiburg and is
published under the terms of the GNU General Public License 3 (GPLv3).


Requirements
============

myND is written in Java, so you need a recent version of the Java Runtime
Environment installed to run it. We ran myND with JRE 1.6 successfully. 


Usage
=====

To compile myND, change to the source folder (src) and use the 
following command.

$ ./build


To run myND, change to the source folder (src) and use the 
following command.

$ java JavaOptions mynd.MyNDPlanner PlannerOptions pathToSASFile

Useful Java Options are
 
 * -Xmx4g: to set the maximum heap space to 4 GB
 * -ea: to enable assertions

Check out available planner options from our Wiki page

    https://bitbucket.org/robertmattmueller/mynd/src/default/wiki/Planner_Options.md

You can also use the help in myND.

$ java mynd.MyNDPlanner -help

You can find some planning tasks in SAS+ format in the folders data/benchmarks-fond
and data/benchmarks-pond.

For example, the following command will run myND on the first blocksworld instance
using LAO* search ('-laostar') guided by the FF heuristic ('-ff').

$ java -ea -Xmx4g mynd.MyNDPlanner -laostar -ff ../data/benchmarks-fond/blocksworld_p1.sas




For more information on the planner, check out our Wiki

	https://bitbucket.org/robertmattmueller/mynd/src/default/wiki/Home.md


Contact
=======

myND is hosted on bitbucket under the URL

    https://bitbucket.org/robertmattmueller/mynd

The original authors of myND are, in alphabetical order:

 * Pascal Bercher
 * Robert Mattmüller
 * Manuela Ortlieb

If you want to get in touch with us, please contact Robert Mattmüller.
His email address can easily be found on the web.