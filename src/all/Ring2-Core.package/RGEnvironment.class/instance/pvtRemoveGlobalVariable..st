private - backend access
pvtRemoveGlobalVariable: anRGGlobalVariable

	self environment verifyOwnership: anRGGlobalVariable.
	
	globalVariables remove: anRGGlobalVariable.