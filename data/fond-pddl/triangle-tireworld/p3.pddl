(define (problem triangle-tire-3)
   (:domain triangle-tire)
   (:objects l_1_1
             l_1_2
             l_1_3
             l_1_4
             l_1_5
             l_1_6
             l_1_7
             l_2_1
             l_2_2
             l_2_3
             l_2_4
             l_2_5
             l_2_6
             l_3_1
             l_3_2
             l_3_3
             l_3_4
             l_3_5
             l_4_1
             l_4_2
             l_4_3
             l_4_4
             l_5_1
             l_5_2
             l_5_3
             l_6_1
             l_6_2
             l_7_1 - location)
   (:init (vehicle-at l_1_1)
          (road l_1_1 l_1_2)
          (road l_1_2 l_1_3)
          (road l_1_3 l_1_4)
          (road l_1_4 l_1_5)
          (road l_1_5 l_1_6)
          (road l_1_6 l_1_7)
          (road l_1_1 l_2_1)
          (road l_1_2 l_2_2)
          (road l_1_3 l_2_3)
          (road l_1_4 l_2_4)
          (road l_1_5 l_2_5)
          (road l_1_6 l_2_6)
          (road l_2_1 l_1_2)
          (road l_2_2 l_1_3)
          (road l_2_3 l_1_4)
          (road l_2_4 l_1_5)
          (road l_2_5 l_1_6)
          (road l_2_6 l_1_7)
          (spare-in l_2_1)
          (spare-in l_2_2)
          (spare-in l_2_3)
          (spare-in l_2_4)
          (spare-in l_2_5)
          (spare-in l_2_6)
          (road l_3_1 l_3_2)
          (road l_3_2 l_3_3)
          (road l_3_3 l_3_4)
          (road l_3_4 l_3_5)
          (road l_2_1 l_3_1)
          (road l_2_3 l_3_3)
          (road l_2_5 l_3_5)
          (road l_3_1 l_2_2)
          (road l_3_3 l_2_4)
          (road l_3_5 l_2_6)
          (spare-in l_3_5)
          (spare-in l_3_1)
          (road l_3_1 l_4_1)
          (road l_3_2 l_4_2)
          (road l_3_3 l_4_3)
          (road l_3_4 l_4_4)
          (road l_4_1 l_3_2)
          (road l_4_2 l_3_3)
          (road l_4_3 l_3_4)
          (road l_4_4 l_3_5)
          (spare-in l_4_1)
          (spare-in l_4_2)
          (spare-in l_4_3)
          (spare-in l_4_4)
          (road l_5_1 l_5_2)
          (road l_5_2 l_5_3)
          (road l_4_1 l_5_1)
          (road l_4_3 l_5_3)
          (road l_5_1 l_4_2)
          (road l_5_3 l_4_4)
          (spare-in l_5_1)
          (spare-in l_5_3)
          (road l_5_1 l_6_1)
          (road l_5_2 l_6_2)
          (road l_6_1 l_5_2)
          (road l_6_2 l_5_3)
          (spare-in l_6_1)
          (spare-in l_6_2)
          (road l_6_1 l_7_1)
          (road l_7_1 l_6_2)
          (spare-in l_7_1)
          (not-flattire))
   (:goal (vehicle-at l_1_7)))
