(define (domain blocks)
	(:requirements :typing :negative-preconditions :probabilistic-effects :conditional-effects :disjunctive-preconditions :strips :adl)

	(:predicates
		(z0 ?x)
		(not_z0 ?x)
		(r0 ?x ?y)
		(not_r0 ?x ?y)
	)


(:action o0_0_o1_0_i0_c173
	:parameters (?o0 ?o1)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		
	)
	:effect (probabilistic
		0.19595 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) 
		)
		0.66216 (and
			(not_r0 ?o1 ?o1) (not_r0 ?o1 ?o0) 
		)
		0.14189 (and
			(not_r0 ?o1 ?o0) 
		)
	)
)
(:action o0_0_o1_0_i1_c107
	:parameters (?o0 ?o1)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) 
	)
	:effect (probabilistic
		0.86517 (and
		
		)
		0.13483 (and
			(not_r0 ?o1 ?o1) 
		)
	)
)
(:action o1_0_o0_0_i2_c103
	:parameters (?o0 ?o1)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) 
	)
	:effect (probabilistic
		0.84615 (and
		)
		0.15385 (and
			(not (not_r0 ?o0 ?o1)) (not (not_r0 ?o0 ?o0)) 
		)
	)
)
(:action o1_0_o0_0_i3_c73
	:parameters (?o0 ?o1)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o1 ?o1) 
	)
	:effect (probabilistic
		0.58928 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) (not (not_r0 ?o1 ?o1)) 
		)
		0.14286 (and
			(not (not_r0 ?o1 ?o1)) (not_r0 ?o0 ?o1) 
		)
		0.26786 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) 
		)
	)
)
(:action o0_0_o1_0_i4_c66
	:parameters (?o0 ?o1)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o1 ?o1) 
	)
	:effect (probabilistic
		0.22642 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o1 ?o0) 
		)
		0.77358 (and
			(not_r0 ?o1 ?o0) 
		)
	)
)
(:action o1_0_o0_0_i5_c41
	:parameters (?o0 ?o1)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o0 ?o0) (not_r0 ?o1 ?o1) 
	)
	:effect (probabilistic
		0.75676 (and
			(not_r0 ?o0 ?o1) (not (not_r0 ?o1 ?o1)) 
		)
		0.24324 (and
			(not_r0 ?o0 ?o1) 
		)
	)
)
(:action o1_0_o0_0_i6_c33
	:parameters (?o0 ?o1 ?o2)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o1 ?o1) (not_r0 ?o1 ?o2) (r0 ?o2 ?o0) 
	)
	:effect (probabilistic
		0.30769 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (not (not_r0 ?o1 ?o1)) (not (not_r0 ?o1 ?o2)) (not (r0 ?o2 ?o0)) (r0 ?o2 ?o1) 
		)
		0.30769 (and
			(not (not_r0 ?o1 ?o2)) (not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (r0 ?o2 ?o1) (not (r0 ?o2 ?o0)) 
		)
		0.38462 (and
			(not (r0 ?o2 ?o0)) (not (not_r0 ?o1 ?o2)) (not (not_r0 ?o1 ?o1)) (not_r0 ?o0 ?o2) (not_r0 ?o0 ?o0) 
		)
	)
)
(:action o2_0_o1_0_i7_c29
	:parameters (?o0 ?o1 ?o2)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (r0 ?o2 ?o1) 
	)
	:effect (probabilistic
		0.5 (and
			(not (r0 ?o2 ?o1)) (r0 ?o2 ?o0) (not_r0 ?o1 ?o2) (not_r0 ?o1 ?o1) (not_r0 ?o1 ?o0) (not (not_r0 ?o0 ?o2)) (not (not_r0 ?o0 ?o0)) 
		)
		0.5 (and
			(not_r0 ?o1 ?o1) (not_r0 ?o1 ?o2) (not (not_r0 ?o0 ?o2)) (not (r0 ?o2 ?o1)) 
		)
	)
)
(:action o0_0_o1_0_i8_c26
	:parameters (?o0 ?o1)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) (not_r0 ?o1 ?o1) 
	)
	:effect (probabilistic
		0.61111 (and
			(not (not_r0 ?o1 ?o1)) 
		)
		0.38889 (and
		)
	)
)
(:action o1_0_o0_0_i9_c22
	:parameters (?o0 ?o1)
	:precondition (and
		(not (= ?o0 ?o1)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(r0 ?o1 ?o0) 
	)
	:effect (probabilistic
		1.0 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o1) (not (r0 ?o1 ?o0)) 
		)
	)
)
(:action o0_0_o1_0_i10_c20
	:parameters (?o0 ?o1 ?o2)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(r0 ?o0 ?o0) (r0 ?o0 ?o1) (r0 ?o0 ?o2) (not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) (not_r0 ?o1 ?o2) (not_r0 ?o2 ?o0) (not_r0 ?o2 ?o1) (not_r0 ?o2 ?o2) 
	)
	:effect (probabilistic
		0.41666 (and
		)
		0.25 (and
			(not (r0 ?o0 ?o0)) 
		)
		0.16667 (and
			(not (r0 ?o0 ?o2)) 
		)
		0.16667 (and
			(not (not_r0 ?o1 ?o2)) 
		)
	)
)
(:action o2_0_o1_0_i11_c18
	:parameters (?o0 ?o1 ?o2)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(r0 ?o0 ?o2) (not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) 
	)
	:effect (probabilistic
		0.25 (and
			(not (r0 ?o0 ?o2)) (r0 ?o2 ?o1) 
		)
		0.25 (and
			(r0 ?o2 ?o0) (and (not_r0 ?o0 ?o2) (not (r0 ?o0 ?o2))) (not_r0 ?o0 ?o1) (not_r0 ?o1 ?o2) 
		)
		0.25 (and
			(and (not_r0 ?o0 ?o2) (not (r0 ?o0 ?o2))) (r0 ?o2 ?o1) (not_r0 ?o1 ?o2) 
		)
		0.25 (and
			(not_r0 ?o1 ?o2) (and (not_r0 ?o0 ?o2) (not (r0 ?o0 ?o2))) (r0 ?o2 ?o1) (r0 ?o2 ?o0) 
		)
	)
)
(:action o2_0_o0_0_i12_c17
	:parameters (?o0 ?o1 ?o2)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o1 ?o0) (not_r0 ?o1 ?o1) 
	)
	:effect (probabilistic
		0.25 (and
			(not_r0 ?o1 ?o2) (r0 ?o2 ?o1) (r0 ?o2 ?o2) (r0 ?o2 ?o0) (not_r0 ?o0 ?o2) 
		)
		0.25 (and
			(r0 ?o2 ?o1) (not_r0 ?o1 ?o2) (not_r0 ?o0 ?o2) 
		)
		0.25 (and
			(not_r0 ?o1 ?o2) (not_r0 ?o0 ?o1) (not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (r0 ?o2 ?o1) (r0 ?o2 ?o0) 
		)
		0.25 (and
			(r0 ?o2 ?o2) (r0 ?o2 ?o1) (not_r0 ?o0 ?o2) (not_r0 ?o1 ?o2) 
		)
	)
)
(:action o1_0_o0_0_i13_c17
	:parameters (?o0 ?o1 ?o2)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(r0 ?o0 ?o1) (not_r0 ?o2 ?o0) (not_r0 ?o2 ?o2) 
	)
	:effect (probabilistic
		0.375 (and
			(r0 ?o1 ?o2) (and (not_r0 ?o0 ?o1) (not (r0 ?o0 ?o1))) (not_r0 ?o2 ?o1) 
		)
		0.25 (and
			(r0 ?o1 ?o2) (not (r0 ?o0 ?o1)) (not_r0 ?o2 ?o1) 
		)
		0.375 (and
			(and (not_r0 ?o0 ?o1) (not (r0 ?o0 ?o1))) (r0 ?o1 ?o0) (r0 ?o1 ?o2) (not_r0 ?o2 ?o1) 
		)
	)
)
(:action o0_0_o1_0_i14_c16
	:parameters (?o0 ?o1 ?o2)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (not_r0 ?o1 ?o1) (r0 ?o2 ?o1) 
	)
	:effect (probabilistic
		0.42857 (and
			(not (not_r0 ?o0 ?o0)) (not (not_r0 ?o0 ?o2)) (not_r0 ?o1 ?o2) (not (r0 ?o2 ?o1)) 
		)
		0.57143 (and
			(not_r0 ?o1 ?o2) (not (not_r0 ?o0 ?o0)) (not (not_r0 ?o0 ?o2)) (not (r0 ?o2 ?o1)) (r0 ?o2 ?o0) 
		)
	)
)
(:action o2_0_o0_0_i15_c16
	:parameters (?o0 ?o1 ?o2)
	:precondition (and
		(not (= ?o0 ?o1)) (not (= ?o0 ?o2)) (not (= ?o1 ?o2)) 
		(not_z0 ?o0) 
		(not_z0 ?o1) 
		(not_z0 ?o2) 
		(not_r0 ?o1 ?o1) (not_r0 ?o1 ?o2) 
	)
	:effect (probabilistic
		1.0 (and
			(not_r0 ?o0 ?o0) (not_r0 ?o0 ?o2) (not (not_r0 ?o1 ?o1)) (not (not_r0 ?o1 ?o2)) 
		)
	)
)
)