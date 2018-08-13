accessing - backend
removeAlias: aSymbol

	self parent parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeAlias: aSymbol from: self ].