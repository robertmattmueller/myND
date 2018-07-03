(define (domain test)
  (:requirements :strips :typing :action-costs)
  (:types block)
  (:constants 
      A - block 
      B - block
  )
  (:action op1
    :effect (and (A)
    (increase (total-cost) 5))
  )

  (:action op2
    :effect (and (B)
    (increase (total-cost) 1))
  )

  (:action op3
    :precondition (and (B))
    :effect (and (A)
    (increase (total-cost) 0))
  )
)