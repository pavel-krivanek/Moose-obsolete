tests
testPatternsHD
	"Horizontal Decomposition lattice"

	| lattice patterns |
	lattice := MalLattice on: self initializeHD.
	patterns := MalLatticePatterns on: lattice.
	self assert: patterns horizontalDecomposition equals: 2.
	self assert: patterns IsHorizontalDecomposition.
	self assert: patterns totalConnections equals: 7