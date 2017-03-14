private
addDFAStateForNFAStates: anNFAStateSet
	cachedDFAStates size >= self maxCachedDFAStates
		ifTrue: [self removeDFAStates].
	^ cachedDFAStates
		at: anNFAStateSet
		put: (anNFAStateSet asDFAStateWithStateCache: self).