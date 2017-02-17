tests
testLatticeMammals
	| lattice |
	lattice := MalLattice on: self initializeDataMammals.
	self assert: lattice nodes size equals: 8.
	self assert: lattice bottom concept numAttributes equals: 5.
	self assert: lattice top concept numObjects equals: 6.
	self assert: lattice nodes size equals: 8.
	self assert: (lattice top hasDescendant: lattice bottom).
	self assert: lattice bottom descendants isEmpty