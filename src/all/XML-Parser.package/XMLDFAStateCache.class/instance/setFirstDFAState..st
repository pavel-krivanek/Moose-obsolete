initialization
setFirstDFAState: aDFAState
	firstDFAState := aDFAState.
	(cachedDFAStates := Dictionary new: 5)
		at: firstDFAState nfaStates
		put: firstDFAState.