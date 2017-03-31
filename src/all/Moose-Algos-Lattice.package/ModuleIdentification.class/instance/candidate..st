accessing
candidate: anObject
	
	aCandidate ifNil: [aCandidate := OrderedCollection new].
	(aCandidate includes: anObject)
		ifFalse: [aCandidate add: anObject].