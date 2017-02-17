private
removeDFAStates
	cachedDFAStates
		valuesDo: [:each | each removeDFAStateTransitions];
		removeAll.
	cachedDFAStates
		at: firstDFAState nfaStates
		put: firstDFAState.