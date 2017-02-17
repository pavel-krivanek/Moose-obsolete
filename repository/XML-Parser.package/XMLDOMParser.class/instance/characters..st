handling - content
characters: aString
	(self isInCDataSection
		and: [self preservesCDataNodes])
		ifTrue: [self topNode addNode: (self nodeFactory newCData: aString)]
		ifFalse: [self topNode addString: aString]