#include <iostream>
#include <fstream>
#include <sstream>
#include <cassert>
#include <cstdlib> // (stdlib.h) 

using namespace std;

int main(int argc, const char **argv) {
    srand(0);
    if(argc < 2) {
        cerr << "need at least one argument." << endl;
        return 2;
    }

    ifstream file(argv[1], ifstream::in);
    if(!file.is_open()) {
        cerr << argv[1] << " could not be opened.";
        return 2;
    } else {
        stringstream tmp;
        string name(argv[1]);

        unsigned int lastSlash = name.find_last_of("/");
        if(lastSlash != string::npos)
            name = name.substr(lastSlash+1);

        unsigned int lastDot = name.find_last_of(".");

        if(lastDot != string::npos)
            name = name.substr(0,lastDot);

        tmp << "(define (problem " << name << ")\n\t(:domain ctp)\n\t(:objects";
        char pChar, eChar;
        int from, to, targetNode, weight, numberOfEdges;
        double prob;
        file >> pChar;
        assert(pChar == 'p');
        file >> targetNode >> numberOfEdges;

        for(int i = 1; i <= targetNode; ++i)
            tmp << "\n\t\tloc" << i << " - location";

        tmp << "\n\t)\n\t(:init\n\t\t(current-loc loc1)";

        for(int i = 0; i < numberOfEdges; ++i) {
            file >> eChar >> from >> to >> prob >> weight;
            assert(eChar == 'e');
            assert(from <= targetNode);
            assert(to <= targetNode);
            tmp << "\n\t\t(connected loc" << from << " loc" << to << ")";
            if(from == 1 || to == 1) {
                tmp << "\n\t\t(road-passable loc" << from << " loc" << to << ")";
                tmp << "\n\t\t(passable-from-agents-view loc" << from << " loc" << to << ")";
            } else  {
                // create a random number
                int r = (rand() % 101);
                if (r <= (100*prob)) {
                    tmp << "\n\t\t(road-passable loc" << from << " loc" << to << ")";
                    if (100*prob >= 80) {
                        tmp << "\n\t\t(passable-from-agents-view loc" << from << " loc" << to << ")";
                    }
                    else {
                        tmp << "\n\t\t(unknown (passable-from-agents-view loc" << from << " loc" << to << "))";
                    }
                }
                else {
                    if (100*prob > 10) {
                        tmp << "\n\t\t(unknown (passable-from-agents-view loc" << from << " loc" << to << "))";
                    }
                }
            }
        }

        file.close();

        tmp << "\n\t)";
        tmp << "\n\t(:goal (current-loc loc" << targetNode << "))\n)\n";

        string outfileName(name + ".ppddl");
        ofstream outfile(outfileName.c_str(), ofstream::out);
        outfile << tmp.str();
        outfile.close();
    }   
}
