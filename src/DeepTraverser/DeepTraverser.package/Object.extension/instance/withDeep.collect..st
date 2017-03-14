*DeepTraverser
withDeep: aBlock1 collect: aBlock2
	^ self 
		withDeep: aBlock1 
		collect: aBlock2 
		as: OrderedCollection 