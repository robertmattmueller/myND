(define (problem BW-unknown-2)
(:domain blocksworld)
(:objects b1 b2 )
(:init
(unknown (on-table b1))
(unknown (clear b1))
(unknown (on b1 b2))
(unknown (on-table b2))
(unknown (clear b2))
(unknown (on b2 b1))
(oneof (on-table b1) (on b1 b2) )
(oneof (on-table b2) (on b2 b1) )
(oneof (clear b1) (on b2 b1) )
(oneof (clear b2) (on b1 b2) )
(or (on-table b1) (on-table b2) )
(or (clear b1) (clear b2) )

; No cyclic dependencies of blocks
)
(:goal
(and
(on-table b1)
(on b2 b1)
)
)
)

