(define (problem FR_8_10)
 (:domain first-response)
 (:objects  l1 l2 l3 l4 l5 l6 l7 l8  - location
	    f1 f2 f3 f4 - fire_unit
	    v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 - victim
	    m1 m2 - medical_unit
)
 (:init
        (adjacent l1 l1)
        (adjacent l1 l2)
        (adjacent l1 l3)
        (adjacent l1 l4)
        (adjacent l1 l5)
        (adjacent l1 l6)
        (adjacent l1 l7)
        (adjacent l1 l8)
        (adjacent l2 l1)
        (adjacent l2 l2)
        (adjacent l2 l3)
        (adjacent l2 l4)
        (adjacent l2 l5)
        (adjacent l2 l6)
        (adjacent l2 l7)
        (adjacent l2 l8)
        (adjacent l3 l1)
        (adjacent l3 l2)
        (adjacent l3 l3)
        (adjacent l3 l6)
        (adjacent l3 l7)
        (adjacent l3 l8)
        (adjacent l4 l1)
        (adjacent l4 l2)
        (adjacent l4 l4)
        (adjacent l4 l6)
        (adjacent l4 l7)
        (adjacent l5 l1)
        (adjacent l5 l2)
        (adjacent l5 l5)
        (adjacent l5 l6)
        (adjacent l6 l1)
        (adjacent l6 l2)
        (adjacent l6 l3)
        (adjacent l6 l4)
        (adjacent l6 l5)
        (adjacent l6 l6)
        (adjacent l7 l1)
        (adjacent l7 l2)
        (adjacent l7 l3)
        (adjacent l7 l4)
        (adjacent l7 l7)
        (adjacent l8 l1)
        (adjacent l8 l2)
        (adjacent l8 l3)
        (adjacent l8 l8)
        (fire l1)
        (fire l2)
        (fire l3)
        (fire l4)
        (fire l8)
        (fire-unit-at f1 l2)
        (fire-unit-at f2 l7)
        (fire-unit-at f3 l3)
        (fire-unit-at f4 l8)
        (hospital l1)
        (hospital l2)
        (hospital l3)
        (hospital l4)
        (hospital l6)
        (hospital l7)
        (hospital l8)
        (medical-unit-at m1 l4)
        (medical-unit-at m2 l1)
        (nfire l5)
        (nfire l6)
        (nfire l7)
        (victim-at v1 l1)
        (victim-at v10 l5)
        (victim-at v2 l8)
        (victim-at v3 l8)
        (victim-at v4 l7)
        (victim-at v5 l7)
        (victim-at v6 l7)
        (victim-at v7 l6)
        (victim-at v8 l6)
        (victim-at v9 l5)
        (victim-status v1 dying)
        (victim-status v10 dying)
        (victim-status v2 dying)
        (victim-status v3 dying)
        (victim-status v4 hurt)
        (victim-status v5 hurt)
        (victim-status v6 dying)
        (victim-status v7 dying)
        (victim-status v8 hurt)
        (victim-status v9 hurt)
        (water-at l2)
        (water-at l3)
        (water-at l6)
        (water-at l8)
	)
 (:goal (and  (nfire l4) (nfire l4) (nfire l3) (nfire l3) (nfire l2) (nfire l2) (nfire l1) (nfire l1) (nfire l1) (nfire l8)  (victim-status v1 healthy) (victim-status v2 healthy) (victim-status v3 healthy) (victim-status v4 healthy) (victim-status v5 healthy) (victim-status v6 healthy) (victim-status v7 healthy) (victim-status v8 healthy) (victim-status v9 healthy) (victim-status v10 healthy)))
 )
