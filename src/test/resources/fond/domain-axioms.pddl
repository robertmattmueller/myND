(define (domain test-axioms)
  (:requirements :typing :derived-predicates)
  (:types block)
  ;(:predicates (true ?a - block) (equals ?a ?b - block))
  (:predicates (true ?a - block))

  (:derived (allTrue)
    (forall (?a - block) (true ?a))
  )

  (:derived (allFalse)
    (forall (?a - block) (not (true ?a)))
  )
  
  (:action make-false
    :parameters (?a - block)
    :precondition (true ?a)
    :effect (and (not (true ?a)))
  )
)