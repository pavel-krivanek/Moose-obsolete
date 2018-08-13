private - backend access
removeClassVariable: anRGInstanceVariableDefinition

	self owner announceDefinitionChangeDuring: [ 
		self backend forBehavior removeClassVariable: anRGInstanceVariableDefinition from: self owner ].