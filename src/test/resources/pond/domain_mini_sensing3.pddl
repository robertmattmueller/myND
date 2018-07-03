(define (domain sensing)
  (:requirements :strips)
  (:predicates (a) (x) (y) (z))


  (:action op_z
    :precondition (and (a) (y))
    :observe (z)
  )

  (:action op_x
    :precondition (y)
    :observe (x)
  )

  (:action op_y
    :precondition (a)
    :observe (y)
  )

  (:action op_x
    :effect (and (a) (x) (y) (z))
  )
)