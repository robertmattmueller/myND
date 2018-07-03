(define (domain sensing)
  (:requirements :strips)
  (:predicates (a) (b) (c) (d) (e))


  (:action op_1
    :precondition (and (a))
    :effect (and (b))
  )

  (:action op_2
    :precondition (and (b))
    :effect (and (e))
  )

  (:action op_3
    :precondition (and (c))
    :effect (and (e))
  )

  (:action op_4
    :precondition (and (d))
    :effect (and (e))
  )

  (:action s_1
    :precondition (and (a))
    :observe (c) (d)
  )

)