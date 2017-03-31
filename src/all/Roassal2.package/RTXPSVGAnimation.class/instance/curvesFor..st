public
curvesFor: index
	| t res acurves bcurves c2 |
	t := animatedValue value.
	acurves := curves0 at: index.
	bcurves := curves1 at: index .
	res := Array new: acurves size.
	
	acurves doWithIndex: [ :c1 :i | 
		c2 := bcurves at: i.
		res at: i put: (Array with: c1 first with: 
			(c1 second collect: [:point | point interpolateTo: c2 second first at: t]) )
		].
	
	^ res