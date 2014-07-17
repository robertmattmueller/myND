(define (problem fault-o3-f1)
 (:domain faults)
 (:init
	(not-last-fault f1)
	(not-completed o1)
	(not-completed o2)
	(not-completed o3)
	(not-fault f1)
 )
 (:goal (made))
)

