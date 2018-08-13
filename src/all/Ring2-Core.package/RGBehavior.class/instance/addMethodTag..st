accessing - backend
addMethodTag: aSymbol 

	self announceDefinitionChangeDuring: [ 
		self backend forBehavior addMethodTag: aSymbol to: self. ].