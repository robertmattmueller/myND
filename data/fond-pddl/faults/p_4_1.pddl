(define (problem fault-o4-f1)
 (:domain faults)
 (:init
	(not-last-fault f1)
	(not-completed o1)
	(not-completed o2)
	(not-completed o3)
	(not-completed o4)
	(not-fault f1)
 )
 (:goal (made))
)

