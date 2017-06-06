complex
IsSuperConceptSpecialization: aNode
	^ (self lattice top = aNode and: [ self isFull: aNode ]) or: [ (self isBlack: aNode) or: [ self isFull: aNode ] ]