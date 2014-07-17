(define (problem triangle-tire-2)
   (:domain triangle-tire)
   (:objects l_1_1
             l_1_2
             l_1_3
             l_1_4
             l_1_5
             l_2_1
             l_2_2
             l_2_3
             l_2_4
             l_3_1
             l_3_2
             l_3_3
             l_4_1
             l_4_2
             l_5_1 - location)
   (:init (vehicle-at l_1_1)
          (road l_1_1 l_1_2)
          (road l_1_2 l_1_3)
          (road l_1_3 l_1_4)
          (road l_1_4 l_1_5)
          (road l_1_1 l_2_1)
          (road l_1_2 l_2_2)
          (road l_1_3 l_2_3)
          (road l_1_4 l_2_4)
          (road l_2_1 l_1_2)
          (road l_2_2 l_1_3)
          (road l_2_3 l_1_4)
          (road l_2_4 l_1_5)
          (spare-in l_2_1)
          (spare-in l_2_2)
          (spare-in l_2_3)
          (spare-in l_2_4)
          (road l_3_1 l_3_2)
          (road l_3_2 l_3_3)
          (road l_2_1 l_3_1)
          (road l_2_3 l_3_3)
          (road l_3_1 l_2_2)
          (road l_3_3 l_2_4)
          (spare-in l_3_3)
          (spare-in l_3_1)
          (road l_3_1 l_4_1)
          (road l_3_2 l_4_2)
          (road l_4_1 l_3_2)
          (road l_4_2 l_3_3)
          (spare-in l_4_1)
          (spare-in l_4_2)
          (road l_4_1 l_5_1)
          (road l_5_1 l_4_2)
          (spare-in l_5_1)
          (not-flattire))
   (:goal (vehicle-at l_1_5)))
