tests
testLatticePatterns
	| lattice patterns |
	lattice := MalLattice on: self initializeDataMammals.
	patterns := MalLatticePatterns on: lattice.
	self assert: patterns full size equals: 3.
	self assert: patterns black size equals: 1.
	self assert: patterns grey size equals: 2.
	self assert: patterns empty size equals: 2.
	self assert: patterns isTopBlack equals: false.
	self assert: (patterns isEmpty: patterns lattice top).
	self assert: patterns isTopGrey equals: false.
	self assert: patterns isTopFull equals: false.
	self assert: patterns totalConnections equals: 10