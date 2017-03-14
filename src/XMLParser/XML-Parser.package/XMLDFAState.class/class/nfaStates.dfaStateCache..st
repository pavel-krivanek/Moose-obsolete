instance creation
nfaStates: anNFAStateSet dfaStateCache: aDFAStateCache
	^ self new
		setNFAStates: anNFAStateSet
		dfaStateCache: aDFAStateCache