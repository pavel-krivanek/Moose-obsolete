*DeepTraverser
withDeepCollect: aBlock1 select: aBlock2
	^ self 
		withDeep: aBlock1 
		select: aBlock2 
		collect: [ :each | each ]