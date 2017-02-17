tests
testPatternsSpecialization
	"Irreducible specialization"

	| lattice patterns |
	lattice := MalLattice on: self initializeDataMammals.
	patterns := MalLatticePatterns on: lattice.
	self assert: (patterns IsSuperConceptSpecialization: lattice top) not.
	self assert: (patterns IsSuperConceptSpecialization: (patterns lattice nodes at: 2)).
	self assert: (patterns IsSubConceptSpecialization: lattice bottom) not.
	self assert: (patterns IsSubConceptSpecialization: (patterns lattice nodes at: 3)).
	self assert: patterns irreducibleSpecialization values size equals: 0