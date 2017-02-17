tests
testDistanceFAMIXPackage
	self assert: p1m1 distance equals: 0.0.
	self assert: p2m1 distance equals: -0.25.
	self assert: p1m2 distance equals: 0.0.
	self assert: p2m2 distance equals: -2 / 3.
	self assert: p3m2 distance equals: -0.75.
	self assert: p4m2 distance equals: -1 / 3