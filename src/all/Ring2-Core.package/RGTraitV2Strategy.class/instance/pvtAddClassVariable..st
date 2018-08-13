private - backend access
pvtAddClassVariable: anRGInstanceVariableDefinition

	self owner environment verifyOwnership: anRGInstanceVariableDefinition.
	
	classVariables isRingResolved ifFalse: [ 
		self pvtCleanClassVariables  ].
	
	classVariables add: anRGInstanceVariableDefinition.	