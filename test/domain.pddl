(define (domain blocks)
	(:requirements :equality :probabilistic-effects :typing)
	(:types block)
	(:predicates
		(z0 ?x - block)
		(not_z0 ?x - block)
		(r0 ?x - block ?y - block)
		(not_r0 ?x - block ?y - block)
	)
(:action o1_0_o0_0_i0_c170
	:parameters (?o0  - block  ?o1  - block )
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		
	)
	:effect (probabilistic
		0.52941 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) 
		)
		0.21176 (and
			(not_r0 ?o1 ?o1) (not_r0 ?o0 ?o1) (not_r0 ?o0 ?o0) 
		)
		0.11765 (and
			(not_r0 ?o0 ?o1) 
		)

	)
)
(:action o0_0_o1_0_i1_c106
	:parameters (?o0  - block  ?o1  - block )
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) 
	)
	:effect (probabilistic
		0.64151 (and
			(not_z0 ?o0) 
		)
	
		0.10377 (and
			(not (not_r0 ?o1 ?o0)) (not (not_r0 ?o1 ?o1)) 
		)

	)
)
(:action o0_0_o1_0_i2_c104
	:parameters (?o0  - block  ?o1  - block )
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) 
	)
	:effect (probabilistic
		0.69229 (and
			(not_z0 ?o0)
		)
	
		0.11538 (and
			(not_r0 ?o1 ?o1) 
		)

	)
)
(:action o1_0_o0_0_i3_c81
	:parameters (?o0  - block  ?o1  - block )
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o0 ?o0) 
	)
	:effect (probabilistic
		0.64195 (and
			(not_r0 ?o0 ?o1) 
		)
	
		0.17284 (and
			(not_r0 ?o0 ?o1) (not_r0 ?o1 ?o1) 
		)

	)
)
(:action o0_0_o1_0_i4_c69
	:parameters (?o0  - block  ?o1  - block )
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o0 ?o0) 
	)
	:effect (probabilistic
		0.18841 (and
			(not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) 
		)
	
		0.55072 (and
			(not (not_r0 ?o0 ?o0)) (not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) 
		)
	
	)
)
(:action o1_0_o0_0_i5_c34
	:parameters (?o0  - block  ?o1  - block  ?o2  - block)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o1 ?o1) (not_r0 ?o1 ?o2) (r0 ?o2 ?o0) 
	)
	:effect (probabilistic
		0.11765 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (not (not_r0 ?o1 ?o1)) (not (not_r0 ?o1 ?o2)) (not (r0 ?o2 ?o0)) (r0 ?o2 ?o1) 
		)

		0.14706 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (not (not_r0 ?o1 ?o2)) (not (r0 ?o2 ?o0)) 
		)
	
	)
)
(:action o2_0_o1_0_i6_c30
	:parameters (?o0  - block  ?o1  - block  ?o2 - block)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (r0 ?o2 ?o1) 
	)
	:effect (probabilistic

		0.20000 (and
			(not_r0 ?o1 ?o1) (not_r0 ?o1 ?o2) (not (not_r0 ?o0 ?o2)) (not (r0 ?o2 ?o1)) 
		)

	
	)
)
(:action o0_0_o1_0_i7_c28
	:parameters (?o0  - block  ?o1  - block)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o0 ?o0) (not_r0 ?o1 ?o1) 
	)
	:effect (probabilistic
		0.64286 (and
			(not (not_r0 ?o0 ?o0)) (not_r0 ?o1 ?o0) 
		)
		0.28571 (and
			(not_r0 ?o1 ?o0) 
		)
	
	)
)
(:action o1_0_o0_0_i8_c26
	:parameters (?o0  - block  ?o1  - block)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o0 ?o0) (not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) 
	)
	:effect (probabilistic

		0.34615 (and
			(not_z0 ?o0) 
		)
		0.34615 (and
			(not (not_r0 ?o0 ?o0)) 
		)

	)
)
(:action o1_0_o0_0_i9_c26
	:parameters (?o0  - block  ?o1  - block)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(r0 ?o1 ?o0) 
	)
	:effect (probabilistic

		0.53846 (and
			(not (r0 ?o1 ?o0)) (not_r0 ?o0 ?o1) (not_r0 ?o0 ?o0) 
		)
		0.11538 (and
			(not_r0 ?o0 ?o1) (not (r0 ?o1 ?o0)) 
		)
		0.15385 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) (not (r0 ?o1 ?o0)) (not_r0 ?o1 ?o1) 
		)
	
	)
)
(:action o2_0_o1_0_i10_c19
	:parameters (?o0  - block  ?o1  - block  ?o2 - block)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) (not_r0 ?o0 ?o2) (not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) (not_r0 ?o1 ?o2) (r0 ?o2 ?o0) (r0 ?o2 ?o1) (r0 ?o2 ?o2) 
	)
	:effect (probabilistic
	
		0.26316 (and
			(not_z0 ?o0) 
		)

		0.10526 (and
			(not (r0 ?o2 ?o1)) (not (not_r0 ?o1 ?o0)) (not (not_r0 ?o1 ?o1)) 
		)
	
		0.10526 (and
			(not (r0 ?o2 ?o0)) (not (not_r0 ?o1 ?o0)) 
		)
		0.10526 (and
			(not (r0 ?o2 ?o0)) 
		)
		
	)
)
(:action o0_0_o1_0_i11_c19
	:parameters (?o0  - block  ?o1  - block  ?o2 - block)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o2 ?o0) (not_r0 ?o2 ?o2) 
	)
	:effect (probabilistic
		0.10526 (and
			(not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) (not_r0 ?o1 ?o2) (not (not_r0 ?o2 ?o0)) 
		)
		0.10526 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) (not (not_r0 ?o2 ?o0)) 
		)
	
		0.10526 (and
			(not (not_r0 ?o2 ?o0)) (not_r0 ?o1 ?o1) (not_r0 ?o1 ?o0) (r0 ?o0 ?o2) 
		)
	
		0.10526 (and
			(not_r0 ?o1 ?o1) (not_r0 ?o1 ?o0) (not_r0 ?o0 ?o0) (r0 ?o2 ?o1) (not (not_r0 ?o2 ?o0)) (not (not_r0 ?o2 ?o2)) 
		)
		
		0.10526 (and
			(not_r0 ?o0 ?o0) (r0 ?o0 ?o2) (not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) (not (not_r0 ?o2 ?o0)) (not (not_r0 ?o2 ?o2)) 
		)
		
	)
)
(:action o0_0_o1_0_i12_c18
	:parameters (?o0  - block  ?o1  - block  ?o2 - block)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (not_r0 ?o1 ?o1) (r0 ?o2 ?o1) 
	)
	:effect (probabilistic
		0.16660 (and
			(not (not_r0 ?o0 ?o2)) (not_r0 ?o1 ?o2) (r0 ?o2 ?o0) (not (r0 ?o2 ?o1)) 
		)

	)
)
(:action o2_0_o1_0_i13_c17
	:parameters (?o0  - block  ?o1  - block  ?o2 - block)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) (r0 ?o1 ?o2) 
	)
	:effect (probabilistic
	
		0.11765 (and
			(r0 ?o2 ?o1) (not_r0 ?o0 ?o2)  (not_r0 ?o1 ?o2) (not (r0 ?o1 ?o2)) 
		)
	
		0.11765 (and
			(not_r0 ?o0 ?o2) (r0 ?o2 ?o0)  (not_r0 ?o1 ?o2) (not (r0 ?o1 ?o2)) 
		)
		0.11765 (and
			(r0 ?o2 ?o0)  (not_r0 ?o1 ?o2) (not (r0 ?o1 ?o2)) (not_r0 ?o1 ?o1) (not_r0 ?o1 ?o0) (not_r0 ?o0 ?o2) 
		)
		0.11765 (and
			(not_r0 ?o1 ?o2) (not (r0 ?o1 ?o2)) (not_r0 ?o0 ?o2) 
		)
	
	)
)
)