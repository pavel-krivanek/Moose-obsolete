private - backend access
pvtRemoveSharedPool: anRGPoolVariableDefinition

	self owner environment verifyOwnership: anRGPoolVariableDefinition.
	
	sharedPools remove: anRGPoolVariableDefinition.