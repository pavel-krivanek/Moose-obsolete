*DeepTraverser
withDeepCollect: aBlock as: aCollectionClass

	^ self 
		withDeep: aBlock 
		collect: [ :each | each ]
		as: aCollectionClass