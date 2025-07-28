(define (problem dom1)

	(:domain blocks)
	(:objects obj0 obj1 obj2 )
	(:init 
		(not_z0 obj0) 
		(not_z0 obj1) 
		(not_z0 obj2) 
		
	)
	(:goal (and
		(not_r0 obj2 obj0) (not_r0 obj2 obj2) 
	))
)