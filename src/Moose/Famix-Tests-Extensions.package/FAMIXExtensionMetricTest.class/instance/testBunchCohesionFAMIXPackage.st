tests
testBunchCohesionFAMIXPackage
	self assert: p1m1 bunchCohesion equals: 1.0.
	self assert: p2m1 bunchCohesion equals: (3 / 9) asFloat.
	self assert: p1m2 bunchCohesion equals: (9 / 81) asFloat.
	self assert: p2m2 bunchCohesion equals: 0.0.
	self assert: p3m2 bunchCohesion equals: (2 / 9) asFloat.
	self assert: p4m2 bunchCohesion equals: 0.0