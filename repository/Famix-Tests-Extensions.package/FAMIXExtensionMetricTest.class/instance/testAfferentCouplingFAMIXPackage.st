tests
testAfferentCouplingFAMIXPackage
	self assert: p1m1 afferentCoupling equals: 0.
	self assert: p2m1 afferentCoupling equals: 1.
	self assert: p1m2 afferentCoupling equals: 0.
	self assert: p2m2 afferentCoupling equals: 2.
	self assert: p3m2 afferentCoupling equals: 3.
	self assert: p4m2 afferentCoupling equals: 1