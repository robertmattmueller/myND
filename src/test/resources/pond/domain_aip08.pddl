(define (domain lecture_ws1415_08_16)
  (:requirements :action-costs :strips)
  (:predicates (a) (b) (c) (d) (e) (f) (g) (h))


  (:action op_1a
    :precondition (and (b) (a))
    :effect (and (e)
    (increase (total-cost) 1))
  )

  (:action op_1b
    :precondition (and (c) (d))
    :effect (and (b)
    (increase (total-cost) 1))
  )

  (:action op_2
    :effect (and (f)
    (increase (total-cost) 1))
  )

  (:action op_3
    :precondition (and (f))
    :effect (and (g)
    (increase (total-cost) 1))
  )

  (:action op_4
    :precondition (and (f))
    :effect (and (h)
    (increase (total-cost) 1))
  )

)