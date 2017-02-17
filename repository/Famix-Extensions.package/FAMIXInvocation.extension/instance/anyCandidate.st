*famix-extensions
anyCandidate
	^self candidates isEmpty
		ifFalse: [self candidates at: 1]
		ifTrue: [nil]