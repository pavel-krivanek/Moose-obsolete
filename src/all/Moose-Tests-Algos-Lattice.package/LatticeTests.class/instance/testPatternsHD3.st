tests
testPatternsHD3
	"Horizontal Decomposition lattice"

	| lattice patterns |
	lattice := MalLattice on: self initializeHD2.
	patterns := MalLatticePatterns on: lattice.
	self assert: patterns horizontalDecomposition equals: 3.
	self assert: patterns IsHorizontalDecomposition.
	self assert: patterns totalConnections equals: 9