(define (problem triangle-tire-1)
   (:domain triangle-tire)
   (:objects l_1_1
             l_1_2
             l_1_3
             l_2_1
             l_2_2
             l_3_1 - location)
   (:init (vehicle-at l_1_1)
          (road l_1_1 l_1_2)
          (road l_1_2 l_1_3)
          (road l_1_1 l_2_1)
          (road l_1_2 l_2_2)
          (road l_2_1 l_1_2)
          (road l_2_2 l_1_3)
          (spare-in l_2_1)
          (spare-in l_2_2)
          (road l_2_1 l_3_1)
          (road l_3_1 l_2_2)
          (spare-in l_3_1)
          (not-flattire))
   (:goal (vehicle-at l_1_3)))
