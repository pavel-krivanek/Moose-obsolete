accessing
dfaStateForNFAStates: anNFAStateSet
	^ cachedDFAStates
		at: anNFAStateSet
		ifAbsent: [self addDFAStateForNFAStates: anNFAStateSet]