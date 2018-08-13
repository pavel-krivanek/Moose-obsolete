private - backend access
pvtRemoveClassVariable: anRGInstanceVariableDefinition

	self owner environment verifyOwnership: anRGInstanceVariableDefinition.
	
	classVariables remove: anRGInstanceVariableDefinition.