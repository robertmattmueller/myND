(define (domain test6)
  (:requirements :typing)
  (:types block)
  (:predicates (true ?a - block))
  
  (:action make-false
    :parameters (?a - block)
    :precondition (true ?a)
    :effect (and (not (true ?a)))
  )
)