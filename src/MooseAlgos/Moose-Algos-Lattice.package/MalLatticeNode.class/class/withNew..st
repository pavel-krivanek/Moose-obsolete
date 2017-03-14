as yet unclassified
withNew: concept
	| latticeNode |
	latticeNode := MalLatticeNode with: concept .
	latticeNode concept: concept.
	^latticeNode