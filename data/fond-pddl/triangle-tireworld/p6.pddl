(define (problem triangle-tire-6)
   (:domain triangle-tire)
   (:objects l_1_1
             l_1_2
             l_1_3
             l_1_4
             l_1_5
             l_1_6
             l_1_7
             l_1_8
             l_1_9
             l_1_10
             l_1_11
             l_1_12
             l_1_13
             l_2_1
             l_2_2
             l_2_3
             l_2_4
             l_2_5
             l_2_6
             l_2_7
             l_2_8
             l_2_9
             l_2_10
             l_2_11
             l_2_12
             l_3_1
             l_3_2
             l_3_3
             l_3_4
             l_3_5
             l_3_6
             l_3_7
             l_3_8
             l_3_9
             l_3_10
             l_3_11
             l_4_1
             l_4_2
             l_4_3
             l_4_4
             l_4_5
             l_4_6
             l_4_7
             l_4_8
             l_4_9
             l_4_10
             l_5_1
             l_5_2
             l_5_3
             l_5_4
             l_5_5
             l_5_6
             l_5_7
             l_5_8
             l_5_9
             l_6_1
             l_6_2
             l_6_3
             l_6_4
             l_6_5
             l_6_6
             l_6_7
             l_6_8
             l_7_1
             l_7_2
             l_7_3
             l_7_4
             l_7_5
             l_7_6
             l_7_7
             l_8_1
             l_8_2
             l_8_3
             l_8_4
             l_8_5
             l_8_6
             l_9_1
             l_9_2
             l_9_3
             l_9_4
             l_9_5
             l_10_1
             l_10_2
             l_10_3
             l_10_4
             l_11_1
             l_11_2
             l_11_3
             l_12_1
             l_12_2
             l_13_1 - location)
   (:init (vehicle-at l_1_1)
          (road l_1_1 l_1_2)
          (road l_1_2 l_1_3)
          (road l_1_3 l_1_4)
          (road l_1_4 l_1_5)
          (road l_1_5 l_1_6)
          (road l_1_6 l_1_7)
          (road l_1_7 l_1_8)
          (road l_1_8 l_1_9)
          (road l_1_9 l_1_10)
          (road l_1_10 l_1_11)
          (road l_1_11 l_1_12)
          (road l_1_12 l_1_13)
          (road l_1_1 l_2_1)
          (road l_1_2 l_2_2)
          (road l_1_3 l_2_3)
          (road l_1_4 l_2_4)
          (road l_1_5 l_2_5)
          (road l_1_6 l_2_6)
          (road l_1_7 l_2_7)
          (road l_1_8 l_2_8)
          (road l_1_9 l_2_9)
          (road l_1_10 l_2_10)
          (road l_1_11 l_2_11)
          (road l_1_12 l_2_12)
          (road l_2_1 l_1_2)
          (road l_2_2 l_1_3)
          (road l_2_3 l_1_4)
          (road l_2_4 l_1_5)
          (road l_2_5 l_1_6)
          (road l_2_6 l_1_7)
          (road l_2_7 l_1_8)
          (road l_2_8 l_1_9)
          (road l_2_9 l_1_10)
          (road l_2_10 l_1_11)
          (road l_2_11 l_1_12)
          (road l_2_12 l_1_13)
          (spare-in l_2_1)
          (spare-in l_2_2)
          (spare-in l_2_3)
          (spare-in l_2_4)
          (spare-in l_2_5)
          (spare-in l_2_6)
          (spare-in l_2_7)
          (spare-in l_2_8)
          (spare-in l_2_9)
          (spare-in l_2_10)
          (spare-in l_2_11)
          (spare-in l_2_12)
          (road l_3_1 l_3_2)
          (road l_3_2 l_3_3)
          (road l_3_3 l_3_4)
          (road l_3_4 l_3_5)
          (road l_3_5 l_3_6)
          (road l_3_6 l_3_7)
          (road l_3_7 l_3_8)
          (road l_3_8 l_3_9)
          (road l_3_9 l_3_10)
          (road l_3_10 l_3_11)
          (road l_2_1 l_3_1)
          (road l_2_3 l_3_3)
          (road l_2_5 l_3_5)
          (road l_2_7 l_3_7)
          (road l_2_9 l_3_9)
          (road l_2_11 l_3_11)
          (road l_3_1 l_2_2)
          (road l_3_3 l_2_4)
          (road l_3_5 l_2_6)
          (road l_3_7 l_2_8)
          (road l_3_9 l_2_10)
          (road l_3_11 l_2_12)
          (spare-in l_3_11)
          (spare-in l_3_1)
          (road l_3_1 l_4_1)
          (road l_3_2 l_4_2)
          (road l_3_3 l_4_3)
          (road l_3_4 l_4_4)
          (road l_3_5 l_4_5)
          (road l_3_6 l_4_6)
          (road l_3_7 l_4_7)
          (road l_3_8 l_4_8)
          (road l_3_9 l_4_9)
          (road l_3_10 l_4_10)
          (road l_4_1 l_3_2)
          (road l_4_2 l_3_3)
          (road l_4_3 l_3_4)
          (road l_4_4 l_3_5)
          (road l_4_5 l_3_6)
          (road l_4_6 l_3_7)
          (road l_4_7 l_3_8)
          (road l_4_8 l_3_9)
          (road l_4_9 l_3_10)
          (road l_4_10 l_3_11)
          (spare-in l_4_1)
          (spare-in l_4_2)
          (spare-in l_4_3)
          (spare-in l_4_4)
          (spare-in l_4_5)
          (spare-in l_4_6)
          (spare-in l_4_7)
          (spare-in l_4_8)
          (spare-in l_4_9)
          (spare-in l_4_10)
          (road l_5_1 l_5_2)
          (road l_5_2 l_5_3)
          (road l_5_3 l_5_4)
          (road l_5_4 l_5_5)
          (road l_5_5 l_5_6)
          (road l_5_6 l_5_7)
          (road l_5_7 l_5_8)
          (road l_5_8 l_5_9)
          (road l_4_1 l_5_1)
          (road l_4_3 l_5_3)
          (road l_4_5 l_5_5)
          (road l_4_7 l_5_7)
          (road l_4_9 l_5_9)
          (road l_5_1 l_4_2)
          (road l_5_3 l_4_4)
          (road l_5_5 l_4_6)
          (road l_5_7 l_4_8)
          (road l_5_9 l_4_10)
          (spare-in l_5_1)
          (spare-in l_5_9)
          (road l_5_1 l_6_1)
          (road l_5_2 l_6_2)
          (road l_5_3 l_6_3)
          (road l_5_4 l_6_4)
          (road l_5_5 l_6_5)
          (road l_5_6 l_6_6)
          (road l_5_7 l_6_7)
          (road l_5_8 l_6_8)
          (road l_6_1 l_5_2)
          (road l_6_2 l_5_3)
          (road l_6_3 l_5_4)
          (road l_6_4 l_5_5)
          (road l_6_5 l_5_6)
          (road l_6_6 l_5_7)
          (road l_6_7 l_5_8)
          (road l_6_8 l_5_9)
          (spare-in l_6_1)
          (spare-in l_6_2)
          (spare-in l_6_3)
          (spare-in l_6_4)
          (spare-in l_6_5)
          (spare-in l_6_6)
          (spare-in l_6_7)
          (spare-in l_6_8)
          (road l_7_1 l_7_2)
          (road l_7_2 l_7_3)
          (road l_7_3 l_7_4)
          (road l_7_4 l_7_5)
          (road l_7_5 l_7_6)
          (road l_7_6 l_7_7)
          (road l_6_1 l_7_1)
          (road l_6_3 l_7_3)
          (road l_6_5 l_7_5)
          (road l_6_7 l_7_7)
          (road l_7_1 l_6_2)
          (road l_7_3 l_6_4)
          (road l_7_5 l_6_6)
          (road l_7_7 l_6_8)
          (spare-in l_7_7)
          (spare-in l_7_1)
          (road l_7_1 l_8_1)
          (road l_7_2 l_8_2)
          (road l_7_3 l_8_3)
          (road l_7_4 l_8_4)
          (road l_7_5 l_8_5)
          (road l_7_6 l_8_6)
          (road l_8_1 l_7_2)
          (road l_8_2 l_7_3)
          (road l_8_3 l_7_4)
          (road l_8_4 l_7_5)
          (road l_8_5 l_7_6)
          (road l_8_6 l_7_7)
          (spare-in l_8_1)
          (spare-in l_8_2)
          (spare-in l_8_3)
          (spare-in l_8_4)
          (spare-in l_8_5)
          (spare-in l_8_6)
          (road l_9_1 l_9_2)
          (road l_9_2 l_9_3)
          (road l_9_3 l_9_4)
          (road l_9_4 l_9_5)
          (road l_8_1 l_9_1)
          (road l_8_3 l_9_3)
          (road l_8_5 l_9_5)
          (road l_9_1 l_8_2)
          (road l_9_3 l_8_4)
          (road l_9_5 l_8_6)
          (spare-in l_9_5)
          (spare-in l_9_1)
          (road l_9_1 l_10_1)
          (road l_9_2 l_10_2)
          (road l_9_3 l_10_3)
          (road l_9_4 l_10_4)
          (road l_10_1 l_9_2)
          (road l_10_2 l_9_3)
          (road l_10_3 l_9_4)
          (road l_10_4 l_9_5)
          (spare-in l_10_1)
          (spare-in l_10_2)
          (spare-in l_10_3)
          (spare-in l_10_4)
          (road l_11_1 l_11_2)
          (road l_11_2 l_11_3)
          (road l_10_1 l_11_1)
          (road l_10_3 l_11_3)
          (road l_11_1 l_10_2)
          (road l_11_3 l_10_4)
          (spare-in l_11_3)
          (spare-in l_11_1)
          (road l_11_1 l_12_1)
          (road l_11_2 l_12_2)
          (road l_12_1 l_11_2)
          (road l_12_2 l_11_3)
          (spare-in l_12_1)
          (spare-in l_12_2)
          (road l_12_1 l_13_1)
          (road l_13_1 l_12_2)
          (spare-in l_13_1)
          (not-flattire))
   (:goal (vehicle-at l_1_13)))
