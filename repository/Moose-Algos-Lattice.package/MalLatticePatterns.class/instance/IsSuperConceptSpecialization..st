complex
IsSuperConceptSpecialization: aNode
	(self lattice top = aNode) ifTrue: [(self isFull: aNode) ifTrue: [^true] ifFalse: [^false]].  
	((self isBlack: aNode) or: [self isFull: aNode]) ifTrue: [^true] ifFalse: [^false] 