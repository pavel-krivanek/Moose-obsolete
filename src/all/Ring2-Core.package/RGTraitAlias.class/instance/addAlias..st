accessing - backend
addAlias: aSymbol 

	self parent parent announceDefinitionChangeDuring: [ 
		self backend forBehavior addAlias: aSymbol to: self ].