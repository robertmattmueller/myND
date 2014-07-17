#include <iostream>
#include <vector>
#include <set>

void
print_domain( std::ostream &os )
{
  os << "(define (domain blocks-domain)" << std::endl
     << "  (:requirements :probabilistic-effects :conditional-effects :equality)" << std::endl
     << "  (:types block)" << std::endl
     << "  (:predicates (holding ?b - block) (emptyhand) (on-table ?b - block) (on ?b1 ?b2 - block) (clear ?b - block))" << std::endl;

  os << "  (:action pick-up" << std::endl
     << "    :parameters (?b1 ?b2 - block)" << std::endl
     << "    :precondition (and (not (= ?b1 ?b2)) (emptyhand) (clear ?b1) (on ?b1 ?b2))" << std::endl
     << "    :effect" << std::endl
     << "      (probabilistic" << std::endl
     << "        3/4 (and (holding ?b1) (clear ?b2) (not (emptyhand)) (not (clear ?b1)) (not (on ?b1 ?b2)))" << std::endl
     << "        1/4 (and (clear ?b2) (on-table ?b1) (not (on ?b1 ?b2))))" << std::endl
     << "  )" << std::endl
     << "  (:action pick-up-from-table" << std::endl
     << "    :parameters (?b - block)" << std::endl
     << "    :precondition (and (emptyhand) (clear ?b) (on-table ?b))" << std::endl
     << "    :effect (probabilistic 3/4 (and (holding ?b) (not (emptyhand)) (not (on-table ?b))))" << std::endl
     << "  )" << std::endl
     << "  (:action put-on-block" << std::endl
     << "    :parameters (?b1 ?b2 - block)" << std::endl
     << "    :precondition (and (holding ?b1) (clear ?b2))" << std::endl
     << "    :effect (probabilistic 3/4 (and (on ?b1 ?b2) (emptyhand) (clear ?b1) (not (holding ?b1)) (not (clear ?b2)))" << std::endl
     << "                           1/4 (and (on-table ?b1) (emptyhand) (clear ?b1) (not (holding ?b1))))" << std::endl
     << "  )" << std::endl
     << "  (:action put-down" << std::endl
     << "    :parameters (?b - block)" << std::endl
     << "    :precondition (holding ?b)" << std::endl
     << "    :effect (and (on-table ?b) (emptyhand) (clear ?b) (not (holding ?b)))" << std::endl
     << "  )" << std::endl
     << "  (:action pick-tower" << std::endl
     << "    :parameters (?b1 ?b2 ?b3 - block)" << std::endl
     << "    :precondition (and (emptyhand) (on ?b1 ?b2) (on ?b2 ?b3))" << std::endl
     << "    :effect" << std::endl
     << "      (probabilistic 1/10 (and (holding ?b2) (clear ?b3) (not (emptyhand)) (not (on ?b2 ?b3))))" << std::endl
     << "  )" << std::endl
     << "  (:action put-tower-on-block" << std::endl
     << "    :parameters (?b1 ?b2 ?b3 - block)" << std::endl
     << "    :precondition (and (holding ?b2) (on ?b1 ?b2) (clear ?b3))" << std::endl
     << "    :effect (probabilistic 1/10 (and (on ?b2 ?b3) (emptyhand) (not (holding ?b2)) (not (clear ?b3)))" << std::endl
     << "                           9/10 (and (on-table ?b2) (emptyhand) (not (holding ?b2))))" << std::endl
     << "  )" << std::endl
     << "  (:action put-tower-down" << std::endl
     << "    :parameters (?b1 ?b2 - block)" << std::endl
     << "    :precondition (and (holding ?b2) (on ?b1 ?b2))" << std::endl
     << "    :effect (and (on-table ?b2) (emptyhand) (not (holding ?b2)))" << std::endl
     << "  )" << std::endl;

  os << ")" << std::endl;
}

void
print_state( std::ostream &os, std::vector<int> &state )
{
  std::set<int> nclear;

  os << "(emptyhand)";
  for( int i = 0; i < state.size(); ++i ) {
    if( state[i] > 0 )  {
      os << " (on b" << 1+i << " b" << state[i] << ")";
      nclear.insert(state[i]);
    }
    else
      os << " (on-table b" << 1+i << ")";
  }
  for( int i = 1; i <= state.size(); ++i ) {
    if( nclear.find(i) == nclear.end() )
      os << " (clear b" << i << ")";
  }
}

void
print_problem( std::ostream &os, const char *name, int size, std::vector<int> &init, std::vector<int> &goal )
{
  os << "(define (problem bw_" << size << "_" << name << ")" << std::endl
     << "  (:domain blocks-domain)" << std::endl
     << "  (:objects";
  for( int i = 0; i < size; ++i ) os << " b" << 1+i;
  os << " - block)" << std::endl;

  os << "  (:init ";
  print_state( os, init );
  os << ")" << std::endl
     << "  (:goal (and ";
  print_state( os, goal );
  os << "))" << std::endl << ")" << std::endl;
}

int
main( int argc, char **argv )
{
  if( argc == 1 ) {
    std::cout << "typical usage: ./blocksworld <name-suffix> `./bwstates -s 2 -n <#-blocks> -r <seed>`" << std::endl;
    exit(-1);
  }

  const char *name = argv[1];
  argv += 2;
  argc -= 2;

  int i, size;
  std::vector<std::vector<int> > states;
  while( argc > 0 ) {
    std::vector<int> state;
    size = atoi(*argv);
    for( i = 0, --argc, ++argv; i < size; ++i, --argc, ++argv )
      state.push_back(atoi(*argv));
    states.push_back(state);
  }
  //  assert( states.size() >= 2 );

  //print_domain( std::cout );
  //std::cout << std::endl;
  print_problem( std::cout, name, size, states[0], states[1] );
  return(0);
}

