tests
testBunchCouplingFAMIXPackage
	self assert: (p1m1 bunchCouplingWith: p2m1) equals: (1 / 6) asFloat.
	self assert: (p2m1 bunchCouplingWith: p1m1) equals: (1 / 6) asFloat.
	self assert: (p1m2 bunchCouplingWith: p2m2) equals: (2 / 36) asFloat.
	self assert: (p2m2 bunchCouplingWith: p1m2) equals: (2 / 36) asFloat.
	self assert: (p1m2 bunchCouplingWith: p3m2) equals: (4 / 54) asFloat.
	self assert: (p3m2 bunchCouplingWith: p1m2) equals: (4 / 54) asFloat.
	self assert: (p1m2 bunchCouplingWith: p4m2) equals: (1 / 36) asFloat.
	self assert: (p4m2 bunchCouplingWith: p1m2) equals: (1 / 36) asFloat.
	self assert: (p2m2 bunchCouplingWith: p3m2) equals: 0.0.
	self assert: (p3m2 bunchCouplingWith: p2m2) equals: 0.0.
	self assert: (p2m2 bunchCouplingWith: p4m2) equals: 0.0.
	self assert: (p4m2 bunchCouplingWith: p2m2) equals: 0.0.
	self assert: (p3m2 bunchCouplingWith: p4m2) equals: (1 / 12) asFloat.
	self assert: (p4m2 bunchCouplingWith: p3m2) equals: (1 / 12) asFloat