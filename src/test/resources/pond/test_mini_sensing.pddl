(define (problem test_mini_sensing)
(:domain sensing)
(:init
(a)
(unknown (z))
(unknown (w))
(or (and (z) (w)) (and (not (z)) (not (w))))
)
(:goal
(and
(a) (w) (z)
)
)
)