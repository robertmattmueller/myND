(define (domain faults)
 (:types operation tfault)
 (:constants  f1 f2 - tfault
              o1 o2 o3 o4 o5 o6 o7 o8 o9 o10 - operation)
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
  :precondition (and  (not-fault f1) (not-fault f2) (not-completed ?o))
  :effect (and (completed ?o) (not (not-completed ?o))
               (oneof (and) (and (fault f1) (not (not-fault f1))
                                 (faulted-op ?o f1) (last-fault f1) (not (not-last-fault f1)))))
 )
 (:action perform-operation-2-fault
  :parameters (?o - operation)
  :precondition (and  (fault f1) (not-fault f2) (not-completed ?o))
  :effect (and (completed ?o) (not (not-completed ?o))
               (oneof (and) (and (fault f2) (not (not-fault f2))
                                 (faulted-op ?o f2) (last-fault f2) (not (not-last-fault f2)))))
 )
 (:action repair-fault-1
  :parameters (?o - operation)
  :precondition (and (faulted-op ?o f1) (last-fault f1))
  :effect (and (not (faulted-op ?o f1))
               (not-completed ?o) (not (completed ?o))
               (not-last-fault f1) (not (last-fault f1)) (not-fault f1)
          )
  )
 (:action repair-fault-2
  :parameters (?o - operation)
  :precondition (and (faulted-op ?o f2) (last-fault f2))
  :effect (and (not (faulted-op ?o f2))
               (not-completed ?o) (not (completed ?o))
               (last-fault f1) (not (not-last-fault f1))
               (not-last-fault f2) (not (last-fault f2)) (not-fault f2)
          )
  )
 (:action finish
  :precondition (and  (completed o1) (completed o2) (completed o3) (completed o4) (completed o5) (completed o6) (completed o7) (completed o8) (completed o9) (completed o10) (not-last-fault f2))
  :effect (made)
 )
)

