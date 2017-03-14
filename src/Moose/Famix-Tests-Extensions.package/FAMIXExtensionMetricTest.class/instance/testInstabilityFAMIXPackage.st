tests
testInstabilityFAMIXPackage
	self assert: p1m1 instability equals: 1.0.
	self assert: p2m1 instability equals: 0.75.
	self assert: p1m2 instability equals: 1.0.
	self assert: p2m2 instability equals: 1 / 3.
	self assert: p3m2 instability equals: 0.25.
	self assert: p4m2 instability equals: 2 / 3