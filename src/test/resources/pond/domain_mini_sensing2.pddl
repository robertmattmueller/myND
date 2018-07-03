(define (domain sensing)
  (:requirements :strips)
  (:predicates (a) (b) (c) (x) (y) (z) (w))


  (:action op_1
    :precondition (and (a) (b))
    :observe (x)
  )

  (:action op_2
    :precondition (and (a) (c))
    :observe (y)
  )

  (:action op_3
    :observe (z)
  )

  (:action op_4
    :precondition (a)
    :observe (w)
  )

  (:action op_x
    :effect (and (a) (b) (c) (x) (y) (z) (w))
  )
)