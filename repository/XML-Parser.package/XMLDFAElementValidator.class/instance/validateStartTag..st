validating
validateStartTag: anElement
	currentState :=
		currentState
			nextDFAStateMatching: anElement
			ifNone: [self errorUnexpectedElement: anElement].
	currentState hasNonDeterminism
		ifTrue: [self errorNonDeterminismInContentModelAfter: anElement].