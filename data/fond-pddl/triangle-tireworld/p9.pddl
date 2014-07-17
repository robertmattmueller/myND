(define (problem triangle-tire-9)
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
             l_1_14
             l_1_15
             l_1_16
             l_1_17
             l_1_18
             l_1_19
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
             l_2_13
             l_2_14
             l_2_15
             l_2_16
             l_2_17
             l_2_18
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
             l_3_12
             l_3_13
             l_3_14
             l_3_15
             l_3_16
             l_3_17
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
             l_4_11
             l_4_12
             l_4_13
             l_4_14
             l_4_15
             l_4_16
             l_5_1
             l_5_2
             l_5_3
             l_5_4
             l_5_5
             l_5_6
             l_5_7
             l_5_8
             l_5_9
             l_5_10
             l_5_11
             l_5_12
             l_5_13
             l_5_14
             l_5_15
             l_6_1
             l_6_2
             l_6_3
             l_6_4
             l_6_5
             l_6_6
             l_6_7
             l_6_8
             l_6_9
             l_6_10
             l_6_11
             l_6_12
             l_6_13
             l_6_14
             l_7_1
             l_7_2
             l_7_3
             l_7_4
             l_7_5
             l_7_6
             l_7_7
             l_7_8
             l_7_9
             l_7_10
             l_7_11
             l_7_12
             l_7_13
             l_8_1
             l_8_2
             l_8_3
             l_8_4
             l_8_5
             l_8_6
             l_8_7
             l_8_8
             l_8_9
             l_8_10
             l_8_11
             l_8_12
             l_9_1
             l_9_2
             l_9_3
             l_9_4
             l_9_5
             l_9_6
             l_9_7
             l_9_8
             l_9_9
             l_9_10
             l_9_11
             l_10_1
             l_10_2
             l_10_3
             l_10_4
             l_10_5
             l_10_6
             l_10_7
             l_10_8
             l_10_9
             l_10_10
             l_11_1
             l_11_2
             l_11_3
             l_11_4
             l_11_5
             l_11_6
             l_11_7
             l_11_8
             l_11_9
             l_12_1
             l_12_2
             l_12_3
             l_12_4
             l_12_5
             l_12_6
             l_12_7
             l_12_8
             l_13_1
             l_13_2
             l_13_3
             l_13_4
             l_13_5
             l_13_6
             l_13_7
             l_14_1
             l_14_2
             l_14_3
             l_14_4
             l_14_5
             l_14_6
             l_15_1
             l_15_2
             l_15_3
             l_15_4
             l_15_5
             l_16_1
             l_16_2
             l_16_3
             l_16_4
             l_17_1
             l_17_2
             l_17_3
             l_18_1
             l_18_2
             l_19_1 - location)
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
          (road l_1_13 l_1_14)
          (road l_1_14 l_1_15)
          (road l_1_15 l_1_16)
          (road l_1_16 l_1_17)
          (road l_1_17 l_1_18)
          (road l_1_18 l_1_19)
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
          (road l_1_13 l_2_13)
          (road l_1_14 l_2_14)
          (road l_1_15 l_2_15)
          (road l_1_16 l_2_16)
          (road l_1_17 l_2_17)
          (road l_1_18 l_2_18)
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
          (road l_2_13 l_1_14)
          (road l_2_14 l_1_15)
          (road l_2_15 l_1_16)
          (road l_2_16 l_1_17)
          (road l_2_17 l_1_18)
          (road l_2_18 l_1_19)
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
          (spare-in l_2_13)
          (spare-in l_2_14)
          (spare-in l_2_15)
          (spare-in l_2_16)
          (spare-in l_2_17)
          (spare-in l_2_18)
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
          (road l_3_11 l_3_12)
          (road l_3_12 l_3_13)
          (road l_3_13 l_3_14)
          (road l_3_14 l_3_15)
          (road l_3_15 l_3_16)
          (road l_3_16 l_3_17)
          (road l_2_1 l_3_1)
          (road l_2_3 l_3_3)
          (road l_2_5 l_3_5)
          (road l_2_7 l_3_7)
          (road l_2_9 l_3_9)
          (road l_2_11 l_3_11)
          (road l_2_13 l_3_13)
          (road l_2_15 l_3_15)
          (road l_2_17 l_3_17)
          (road l_3_1 l_2_2)
          (road l_3_3 l_2_4)
          (road l_3_5 l_2_6)
          (road l_3_7 l_2_8)
          (road l_3_9 l_2_10)
          (road l_3_11 l_2_12)
          (road l_3_13 l_2_14)
          (road l_3_15 l_2_16)
          (road l_3_17 l_2_18)
          (spare-in l_3_17)
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
          (road l_3_11 l_4_11)
          (road l_3_12 l_4_12)
          (road l_3_13 l_4_13)
          (road l_3_14 l_4_14)
          (road l_3_15 l_4_15)
          (road l_3_16 l_4_16)
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
          (road l_4_11 l_3_12)
          (road l_4_12 l_3_13)
          (road l_4_13 l_3_14)
          (road l_4_14 l_3_15)
          (road l_4_15 l_3_16)
          (road l_4_16 l_3_17)
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
          (spare-in l_4_11)
          (spare-in l_4_12)
          (spare-in l_4_13)
          (spare-in l_4_14)
          (spare-in l_4_15)
          (spare-in l_4_16)
          (road l_5_1 l_5_2)
          (road l_5_2 l_5_3)
          (road l_5_3 l_5_4)
          (road l_5_4 l_5_5)
          (road l_5_5 l_5_6)
          (road l_5_6 l_5_7)
          (road l_5_7 l_5_8)
          (road l_5_8 l_5_9)
          (road l_5_9 l_5_10)
          (road l_5_10 l_5_11)
          (road l_5_11 l_5_12)
          (road l_5_12 l_5_13)
          (road l_5_13 l_5_14)
          (road l_5_14 l_5_15)
          (road l_4_1 l_5_1)
          (road l_4_3 l_5_3)
          (road l_4_5 l_5_5)
          (road l_4_7 l_5_7)
          (road l_4_9 l_5_9)
          (road l_4_11 l_5_11)
          (road l_4_13 l_5_13)
          (road l_4_15 l_5_15)
          (road l_5_1 l_4_2)
          (road l_5_3 l_4_4)
          (road l_5_5 l_4_6)
          (road l_5_7 l_4_8)
          (road l_5_9 l_4_10)
          (road l_5_11 l_4_12)
          (road l_5_13 l_4_14)
          (road l_5_15 l_4_16)
          (spare-in l_5_1)
          (spare-in l_5_15)
          (road l_5_1 l_6_1)
          (road l_5_2 l_6_2)
          (road l_5_3 l_6_3)
          (road l_5_4 l_6_4)
          (road l_5_5 l_6_5)
          (road l_5_6 l_6_6)
          (road l_5_7 l_6_7)
          (road l_5_8 l_6_8)
          (road l_5_9 l_6_9)
          (road l_5_10 l_6_10)
          (road l_5_11 l_6_11)
          (road l_5_12 l_6_12)
          (road l_5_13 l_6_13)
          (road l_5_14 l_6_14)
          (road l_6_1 l_5_2)
          (road l_6_2 l_5_3)
          (road l_6_3 l_5_4)
          (road l_6_4 l_5_5)
          (road l_6_5 l_5_6)
          (road l_6_6 l_5_7)
          (road l_6_7 l_5_8)
          (road l_6_8 l_5_9)
          (road l_6_9 l_5_10)
          (road l_6_10 l_5_11)
          (road l_6_11 l_5_12)
          (road l_6_12 l_5_13)
          (road l_6_13 l_5_14)
          (road l_6_14 l_5_15)
          (spare-in l_6_1)
          (spare-in l_6_2)
          (spare-in l_6_3)
          (spare-in l_6_4)
          (spare-in l_6_5)
          (spare-in l_6_6)
          (spare-in l_6_7)
          (spare-in l_6_8)
          (spare-in l_6_9)
          (spare-in l_6_10)
          (spare-in l_6_11)
          (spare-in l_6_12)
          (spare-in l_6_13)
          (spare-in l_6_14)
          (road l_7_1 l_7_2)
          (road l_7_2 l_7_3)
          (road l_7_3 l_7_4)
          (road l_7_4 l_7_5)
          (road l_7_5 l_7_6)
          (road l_7_6 l_7_7)
          (road l_7_7 l_7_8)
          (road l_7_8 l_7_9)
          (road l_7_9 l_7_10)
          (road l_7_10 l_7_11)
          (road l_7_11 l_7_12)
          (road l_7_12 l_7_13)
          (road l_6_1 l_7_1)
          (road l_6_3 l_7_3)
          (road l_6_5 l_7_5)
          (road l_6_7 l_7_7)
          (road l_6_9 l_7_9)
          (road l_6_11 l_7_11)
          (road l_6_13 l_7_13)
          (road l_7_1 l_6_2)
          (road l_7_3 l_6_4)
          (road l_7_5 l_6_6)
          (road l_7_7 l_6_8)
          (road l_7_9 l_6_10)
          (road l_7_11 l_6_12)
          (road l_7_13 l_6_14)
          (spare-in l_7_1)
          (spare-in l_7_13)
          (road l_7_1 l_8_1)
          (road l_7_2 l_8_2)
          (road l_7_3 l_8_3)
          (road l_7_4 l_8_4)
          (road l_7_5 l_8_5)
          (road l_7_6 l_8_6)
          (road l_7_7 l_8_7)
          (road l_7_8 l_8_8)
          (road l_7_9 l_8_9)
          (road l_7_10 l_8_10)
          (road l_7_11 l_8_11)
          (road l_7_12 l_8_12)
          (road l_8_1 l_7_2)
          (road l_8_2 l_7_3)
          (road l_8_3 l_7_4)
          (road l_8_4 l_7_5)
          (road l_8_5 l_7_6)
          (road l_8_6 l_7_7)
          (road l_8_7 l_7_8)
          (road l_8_8 l_7_9)
          (road l_8_9 l_7_10)
          (road l_8_10 l_7_11)
          (road l_8_11 l_7_12)
          (road l_8_12 l_7_13)
          (spare-in l_8_1)
          (spare-in l_8_2)
          (spare-in l_8_3)
          (spare-in l_8_4)
          (spare-in l_8_5)
          (spare-in l_8_6)
          (spare-in l_8_7)
          (spare-in l_8_8)
          (spare-in l_8_9)
          (spare-in l_8_10)
          (spare-in l_8_11)
          (spare-in l_8_12)
          (road l_9_1 l_9_2)
          (road l_9_2 l_9_3)
          (road l_9_3 l_9_4)
          (road l_9_4 l_9_5)
          (road l_9_5 l_9_6)
          (road l_9_6 l_9_7)
          (road l_9_7 l_9_8)
          (road l_9_8 l_9_9)
          (road l_9_9 l_9_10)
          (road l_9_10 l_9_11)
          (road l_8_1 l_9_1)
          (road l_8_3 l_9_3)
          (road l_8_5 l_9_5)
          (road l_8_7 l_9_7)
          (road l_8_9 l_9_9)
          (road l_8_11 l_9_11)
          (road l_9_1 l_8_2)
          (road l_9_3 l_8_4)
          (road l_9_5 l_8_6)
          (road l_9_7 l_8_8)
          (road l_9_9 l_8_10)
          (road l_9_11 l_8_12)
          (spare-in l_9_1)
          (spare-in l_9_11)
          (road l_9_1 l_10_1)
          (road l_9_2 l_10_2)
          (road l_9_3 l_10_3)
          (road l_9_4 l_10_4)
          (road l_9_5 l_10_5)
          (road l_9_6 l_10_6)
          (road l_9_7 l_10_7)
          (road l_9_8 l_10_8)
          (road l_9_9 l_10_9)
          (road l_9_10 l_10_10)
          (road l_10_1 l_9_2)
          (road l_10_2 l_9_3)
          (road l_10_3 l_9_4)
          (road l_10_4 l_9_5)
          (road l_10_5 l_9_6)
          (road l_10_6 l_9_7)
          (road l_10_7 l_9_8)
          (road l_10_8 l_9_9)
          (road l_10_9 l_9_10)
          (road l_10_10 l_9_11)
          (spare-in l_10_1)
          (spare-in l_10_2)
          (spare-in l_10_3)
          (spare-in l_10_4)
          (spare-in l_10_5)
          (spare-in l_10_6)
          (spare-in l_10_7)
          (spare-in l_10_8)
          (spare-in l_10_9)
          (spare-in l_10_10)
          (road l_11_1 l_11_2)
          (road l_11_2 l_11_3)
          (road l_11_3 l_11_4)
          (road l_11_4 l_11_5)
          (road l_11_5 l_11_6)
          (road l_11_6 l_11_7)
          (road l_11_7 l_11_8)
          (road l_11_8 l_11_9)
          (road l_10_1 l_11_1)
          (road l_10_3 l_11_3)
          (road l_10_5 l_11_5)
          (road l_10_7 l_11_7)
          (road l_10_9 l_11_9)
          (road l_11_1 l_10_2)
          (road l_11_3 l_10_4)
          (road l_11_5 l_10_6)
          (road l_11_7 l_10_8)
          (road l_11_9 l_10_10)
          (spare-in l_11_9)
          (spare-in l_11_1)
          (road l_11_1 l_12_1)
          (road l_11_2 l_12_2)
          (road l_11_3 l_12_3)
          (road l_11_4 l_12_4)
          (road l_11_5 l_12_5)
          (road l_11_6 l_12_6)
          (road l_11_7 l_12_7)
          (road l_11_8 l_12_8)
          (road l_12_1 l_11_2)
          (road l_12_2 l_11_3)
          (road l_12_3 l_11_4)
          (road l_12_4 l_11_5)
          (road l_12_5 l_11_6)
          (road l_12_6 l_11_7)
          (road l_12_7 l_11_8)
          (road l_12_8 l_11_9)
          (spare-in l_12_1)
          (spare-in l_12_2)
          (spare-in l_12_3)
          (spare-in l_12_4)
          (spare-in l_12_5)
          (spare-in l_12_6)
          (spare-in l_12_7)
          (spare-in l_12_8)
          (road l_13_1 l_13_2)
          (road l_13_2 l_13_3)
          (road l_13_3 l_13_4)
          (road l_13_4 l_13_5)
          (road l_13_5 l_13_6)
          (road l_13_6 l_13_7)
          (road l_12_1 l_13_1)
          (road l_12_3 l_13_3)
          (road l_12_5 l_13_5)
          (road l_12_7 l_13_7)
          (road l_13_1 l_12_2)
          (road l_13_3 l_12_4)
          (road l_13_5 l_12_6)
          (road l_13_7 l_12_8)
          (spare-in l_13_1)
          (spare-in l_13_7)
          (road l_13_1 l_14_1)
          (road l_13_2 l_14_2)
          (road l_13_3 l_14_3)
          (road l_13_4 l_14_4)
          (road l_13_5 l_14_5)
          (road l_13_6 l_14_6)
          (road l_14_1 l_13_2)
          (road l_14_2 l_13_3)
          (road l_14_3 l_13_4)
          (road l_14_4 l_13_5)
          (road l_14_5 l_13_6)
          (road l_14_6 l_13_7)
          (spare-in l_14_1)
          (spare-in l_14_2)
          (spare-in l_14_3)
          (spare-in l_14_4)
          (spare-in l_14_5)
          (spare-in l_14_6)
          (road l_15_1 l_15_2)
          (road l_15_2 l_15_3)
          (road l_15_3 l_15_4)
          (road l_15_4 l_15_5)
          (road l_14_1 l_15_1)
          (road l_14_3 l_15_3)
          (road l_14_5 l_15_5)
          (road l_15_1 l_14_2)
          (road l_15_3 l_14_4)
          (road l_15_5 l_14_6)
          (spare-in l_15_1)
          (spare-in l_15_5)
          (road l_15_1 l_16_1)
          (road l_15_2 l_16_2)
          (road l_15_3 l_16_3)
          (road l_15_4 l_16_4)
          (road l_16_1 l_15_2)
          (road l_16_2 l_15_3)
          (road l_16_3 l_15_4)
          (road l_16_4 l_15_5)
          (spare-in l_16_1)
          (spare-in l_16_2)
          (spare-in l_16_3)
          (spare-in l_16_4)
          (road l_17_1 l_17_2)
          (road l_17_2 l_17_3)
          (road l_16_1 l_17_1)
          (road l_16_3 l_17_3)
          (road l_17_1 l_16_2)
          (road l_17_3 l_16_4)
          (spare-in l_17_1)
          (spare-in l_17_3)
          (road l_17_1 l_18_1)
          (road l_17_2 l_18_2)
          (road l_18_1 l_17_2)
          (road l_18_2 l_17_3)
          (spare-in l_18_1)
          (spare-in l_18_2)
          (road l_18_1 l_19_1)
          (road l_19_1 l_18_2)
          (spare-in l_19_1)
          (not-flattire))
   (:goal (vehicle-at l_1_19)))
