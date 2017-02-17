instance creation
on: formalContext
	| lattice |
	lattice := MalLattice new.
	^lattice onConstruct: formalContext