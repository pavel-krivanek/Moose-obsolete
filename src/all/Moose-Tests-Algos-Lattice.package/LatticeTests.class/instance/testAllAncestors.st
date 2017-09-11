tests
testAllAncestors
	"ancestors of a node"

	| lattice patterns |
	lattice := MalLattice on: self initializeDataMammals2.
	patterns := ModuleIdentification new lattice: lattice.
	self assert: (patterns allAncestors: (lattice nodes at: 2)) size equals: 2.
	self assert: (patterns allAncestors: (lattice nodes at: 3)) size equals: 1.
	self assert: (((patterns allAncestors: (lattice nodes at: 3)) at: 1) concept attributes at: 1) value equals: #smart