(define (domain faults)
 (:types operation tfault)
 (:constants  f1 - tfault
              o1 o2 o3 o4 o5 o6 - operation)
 (:predicates
   (not-completed ?o - operation)
   (completed ?o - operation)
   (fault ?f - tfault)
   (not-fault ?f - tfault)
   (faulted-op ?o - operation ?f - tfault)
   (last-fault ?f - tfault)
   (not-last-fault ?f - tfault)
   (made)
  )

 (:action perform-operation-1-fault
  :parameters (?o - operation)
  :precondition (and  (not-fault f1) (not-completed ?o))
  :effect (and (completed ?o) (not (not-completed ?o))
               (oneof (and) (and (fault f1) (not (not-fault f1))
                                 (faulted-op ?o f1) (last-fault f1) (not (not-last-fault f1)))))
 )
 (:action repair-fault-1
  :parameters (?o - operation)
  :precondition (and (faulted-op ?o f1) (last-fault f1))
  :effect (and (not (faulted-op ?o f1))
               (not-completed ?o) (not (completed ?o))
               (not-last-fault f1) (not (last-fault f1)) (not-fault f1)
          )
  )
 (:action finish
  :precondition (and  (completed o1) (completed o2) (completed o3) (completed o4) (completed o5) (completed o6) (not-last-fault f1))
  :effect (made)
 )
)

