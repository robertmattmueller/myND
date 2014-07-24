(define (problem FR_3_8)
 (:domain first-response)
 (:objects  l1 l2 l3  - location
	    f1 - fire_unit
	    v1 v2 v3 v4 v5 v6 v7 v8 - victim
	    m1 - medical_unit
)
 (:init
        (adjacent l1 l1)
        (adjacent l1 l2)
        (adjacent l1 l3)
        (adjacent l2 l1)
        (adjacent l2 l2)
        (adjacent l2 l3)
        (adjacent l3 l1)
        (adjacent l3 l2)
        (adjacent l3 l3)
        (fire l1)
        (fire l2)
        (fire l3)
        (fire-unit-at f1 l3)
        (hospital l1)
        (hospital l3)
        (medical-unit-at m1 l3)
        (victim-at v1 l1)
        (victim-at v2 l3)
        (victim-at v3 l2)
        (victim-at v4 l1)
        (victim-at v5 l3)
        (victim-at v6 l2)
        (victim-at v7 l2)
        (victim-at v8 l1)
        (victim-status v1 dying)
        (victim-status v2 hurt)
        (victim-status v3 hurt)
        (victim-status v4 hurt)
        (victim-status v5 dying)
        (victim-status v6 dying)
        (victim-status v7 hurt)
        (victim-status v8 hurt)
        (water-at l2)
        (water-at l3)
	)
 (:goal (and  (nfire l2) (nfire l3) (nfire l3) (nfire l1) (nfire l1) (nfire l2) (nfire l2) (nfire l1)  (victim-status v1 healthy) (victim-status v2 healthy) (victim-status v3 healthy) (victim-status v4 healthy) (victim-status v5 healthy) (victim-status v6 healthy) (victim-status v7 healthy) (victim-status v8 healthy)))
 )