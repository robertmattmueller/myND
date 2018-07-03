(define (domain test3)
  (:requirements :strips :action-costs)
  (:predicates (A) (B) (C))

  (:action op1
    :effect (and (A))
  )

  (:action op2
    :effect (and (B))
  )

  (:action op3
    :precondition (and (B))
    :effect (and (A))
  )

  (:action op4
    :precondition (and (A) (B))
    :effect (and (C))
  )
)