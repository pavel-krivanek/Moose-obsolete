private - backend access
addClassVariable: anRGInstanceVariableDefinition 

	self owner announceDefinitionChangeDuring: [ 
		self privAddClassVariable: anRGInstanceVariableDefinition ]
	
	