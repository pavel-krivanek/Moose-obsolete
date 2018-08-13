accessing - backend
addExclusion: aSymbol 

	self parent parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addExclusion: aSymbol to: self. ].