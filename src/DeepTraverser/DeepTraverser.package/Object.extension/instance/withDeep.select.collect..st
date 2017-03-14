*DeepTraverser
withDeep: aBlock1 select: aBlock2 collect: aBlock3
	^ self 
		withDeep: aBlock1 
		select: aBlock2 
		collect: aBlock3 
		as: OrderedCollection 