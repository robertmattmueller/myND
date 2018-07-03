(define (domain lecture_ws1314_12_18)
  (:requirements :action-costs :strips)
  (:predicates (s) (a) (b) (c) (d) (e) (f) (g) (h) (t))

  (:action op_s
    :precondition (and (s))
    :effect (and (a) (c) (d)
    (increase (total-cost) 0))
  )

  (:action op_1
    :precondition (and (c) (d))
    :effect (and (b)
    (increase (total-cost) 1))
  )

  (:action op_2
    :precondition (and (a) (b))
    :effect (and (e)
    (increase (total-cost) 1))
  )

  (:action op_3
    :precondition (and (a))
    :effect (and (f)
    (increase (total-cost) 1))
  )

  (:action op_4
    :precondition (and (f))
    :effect (and (g) (h)
    (increase (total-cost) 1))
  )

  (:action op_t
    :precondition (and (e) (g) (h))
    :effect (and (t)
    (increase (total-cost) 0))
  )
)