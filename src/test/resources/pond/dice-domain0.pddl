(define (domain dice-game)
  (:requirements :non-deterministic :equality :typing)
  (:predicates (num0) (num1) (num2) (num3) (num4) (num5) (num6))
  
  (:action dice
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

  (:action observe
  	:observe ((num1) (num2) (num3) (num4) (num5) (num6))
  )
)