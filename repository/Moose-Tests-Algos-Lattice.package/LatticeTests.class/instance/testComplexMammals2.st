tests
testComplexMammals2
	| lattice patterns |
	lattice := MalLattice on: self initializeDataMammals2.
	patterns := MalLatticePatterns on: lattice.
	self assert: (patterns IsSuperConceptSpecialization: lattice top) not.
	self assert: patterns black size equals: 2.
	self assert: patterns grey size equals: 2.
	self assert: patterns full size equals: 3.
	self assert: patterns empty size equals: 3