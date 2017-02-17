complex
IsSubConceptSpecialization: aNode
	(self lattice bottom = aNode) ifTrue: [(self isFull: aNode) ifTrue: [^true]].  
	((self isGrey: aNode) or: [self isFull: aNode]) ifTrue: [^true].
	
	^ false