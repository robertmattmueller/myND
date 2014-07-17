(define (problem fault-o1-f1)
 (:domain faults)
 (:init
	(not-last-fault f1)
	(not-completed o1)
	(not-fault f1)
 )
 (:goal (made))
)

