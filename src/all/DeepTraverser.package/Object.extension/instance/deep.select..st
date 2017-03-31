*DeepTraverser
deep: aBlock1 select: aBlock2
	^ self 
		deep: aBlock1 
		select: aBlock2 
		collect: [ :each | each ] 
		as: OrderedCollection