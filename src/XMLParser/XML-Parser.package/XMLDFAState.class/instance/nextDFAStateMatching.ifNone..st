matching
nextDFAStateMatching: aMatcher ifNone: aBlock
	^ (self dfaStateTransitions
		at: aMatcher
		ifAbsent: [self addDFAStateTransitionMatching: aMatcher])
			ifNil: [aBlock value]