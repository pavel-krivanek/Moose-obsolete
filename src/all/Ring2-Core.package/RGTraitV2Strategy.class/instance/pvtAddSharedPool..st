private - backend access
pvtAddSharedPool: anRGPoolVariable

	self owner environment verifyOwnership: anRGPoolVariable.
	
	sharedPools isRingResolved ifFalse: [ 
		self pvtCleanSharedPools  ].
	
	sharedPools add: anRGPoolVariable.	