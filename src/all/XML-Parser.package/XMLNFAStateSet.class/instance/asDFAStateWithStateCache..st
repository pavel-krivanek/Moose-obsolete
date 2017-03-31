converting
asDFAStateWithStateCache: aDFAStateCache
	^ XMLDFAState
		nfaStates: self
		dfaStateCache: aDFAStateCache