(define (problem test_mini_sensing)
(:domain sensing)
(:init
(unknown (x))
(unknown (y))
(unknown (w))
(or (and (x) (y) (w)) (and (not (x)) (not (y)) (not (w))))
)
(:goal
(and
(not (a)) (x) (y)
)
)
)