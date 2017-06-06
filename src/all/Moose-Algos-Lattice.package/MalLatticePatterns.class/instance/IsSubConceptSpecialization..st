complex
IsSubConceptSpecialization: aNode
	^ (self lattice bottom = aNode and: [ self isFull: aNode ]) or: [ (self isGrey: aNode) or: [ self isFull: aNode ] ]