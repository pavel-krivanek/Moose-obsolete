private - backend access
pvtAddGlobalVariable: anRGGlobalVariable

	self environment verifyOwnership: anRGGlobalVariable.
	
	globalVariables isRingResolved ifFalse: [ 
		self pvtCleanGlobalVariables  ].
	
	globalVariables add: anRGGlobalVariable.	