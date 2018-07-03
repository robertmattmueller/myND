(define (domain dice-game)
  (:requirements :non-deterministic :equality :typing)
  (:predicates (num0) (num1) (num2) (num3) (num4) (num5) (num6) (wait1) (wait2))
  
  (:action dice
    :precondition (and (not (wait1)))
    :effect
      (oneof 
        (and (num1) (not (num2)) (not (num3)) (not (num4)) (not (num5)) (not (num6)))
        (and (num2) (not (num1)) (not (num3)) (not (num4)) (not (num5)) (not (num6)))
        (and (num3) (not (num2)) (not (num1)) (not (num4)) (not (num5)) (not (num6)))
        (and (num4) (not (num2)) (not (num3)) (not (num1)) (not (num5)) (not (num6)))
        (and (num5) (not (num2)) (not (num3)) (not (num4)) (not (num1)) (not (num6)))
        (and (num6) (not (num2)) (not (num3)) (not (num4)) (not (num5)) (not (num1)))
      )
  )
  
  (:action wait-1
    :precondition (and (num0))
    :effect (and (wait1))
  )

  (:action wait-2
    :precondition (and (wait1))
    :effect (and (wait2))
  )

  (:action wait-3
    :precondition (and (wait2))
    :effect (and (num6))
  )

  (:action observe
  	:observe (num6)
  )
)