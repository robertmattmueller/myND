(define (domain test4)
  (:requirements :action-costs :strips)
  (:predicates (A) (B) (C) (D) (E))

  (:action op1
    :effect (and (B)
    (increase (total-cost) 0))
  )

  (:action op2
    :precondition (and (B))
    :effect (and (C)
    (increase (total-cost) 10))
  )

  (:action op3
    :precondition (and (B))
    :effect (and (D)
    (increase (total-cost) 5))
  )

  (:action op4
    :precondition (and (C))
    :effect (and (E)
    (increase (total-cost) 10))
  )

  (:action op5
    :precondition (and (D))
    :effect (and (E)
    (increase (total-cost) 20))
  )

  (:action op6
    :precondition (and (D))
    :effect (and (C)
    (increase (total-cost) 0))
  )
)