tests
testPatternsHD2
	"A lattice without Horizontal Decomposition"

	| lattice patterns |
	lattice := MalLattice on: self initializeDataMammals.
	patterns := MalLatticePatterns on: lattice.
	self assert: patterns IsHorizontalDecomposition not.
	self assert: patterns horizontalDecomposition equals: 0