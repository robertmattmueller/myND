(define (domain sensing)
  (:requirements :strips)
  (:predicates (a) (z) (w))


  (:action op_3
    :observe (z)
  )

  (:action op_4
    :precondition (and (a))
    :observe (w)
  )

  (:action op_x
    :effect  (and (not (a)))
  )
)