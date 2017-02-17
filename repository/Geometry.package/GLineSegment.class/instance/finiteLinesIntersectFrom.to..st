comparing
finiteLinesIntersectFrom: current to: next
	| uat ubt uy z1 z2 z3 z4 ua ub |
	z1 := from.
	z2 := to.
	z3 := current.
	z4 := next.
	uat := ((z4 x - z3 x)*(z1 y - z3 y))-((z4 y - z3 y)*(z1 x - z3 x)).
	ubt := ((z2 x - z1 x)*(z1 y - z3 y))-((z2 y - z1 y)*(z1 x - z3 x)).
	uy := ((z4 y - z3 y)*(z2 x - z1 x))-((z4 x - z3 x)*(z2 y - z1 y)).
	uy isZero not ifTrue: [ 
		ua := uat / uy.
		ub := ubt / uy.
		((ua between: 0 and: 1) and: [ ub between: 0 and: 1 ]) 
			ifTrue: [ ^ (z1 x + (ua *(z2 x - z1 x)))@(z1 y + (ua *(z2 y - z2 y)))  ]
			ifFalse: [ ^ nil ]
		 ] 
	ifFalse: [ 
		(uat isZero or: [ ubt isZero ]) ifTrue: [ 
			"Parallel, coincident lines. Check if overlap"
			(Array with: z1 x with: z2 x with: z4 x) sort second = z4 x 
				ifTrue: [ ^ z4 ].
			(Array with: z1 x with: z2 x with: z3 x) sort second = z3 x 
				ifTrue: [ ^ z3 ].
			(Array with: z3 x with: z4 x with: z2 x) sort second = z2 x 
				ifTrue: [ ^ z2 ].
			^ nil. ]
		ifFalse: [ ^ nil ].
	 ]
	