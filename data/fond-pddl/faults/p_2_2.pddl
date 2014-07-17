(define (problem fault-o2-f2)
 (:domain faults)
 (:init
	(not-last-fault f1)
	(not-last-fault f2)
	(not-completed o1)
	(not-completed o2)
	(not-fault f1)
	(not-fault f2)
 )
 (:goal (made))
)

