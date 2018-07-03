(define (domain test2)
  (:requirements :strips :action-costs)
  (:predicates (A) (B) (C) (D))

  (:action op1
    :effect (and (A)
    (increase (total-cost) 10))
  )

  (:action op2
    :effect (and (B)
    (increase (total-cost) 1))
  )

  (:action op3
    :precondition (and (B))
    :effect (and (C)
    (increase (total-cost) 1))
  )

  (:action op4
    :precondition (and (C))
    :effect (and (A)
    (increase (total-cost) 1))
  )

  (:action op5
    :precondition (and (A))
    :effect (and (D)
    (increase (total-cost) 1))
  )
)