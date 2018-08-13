accessing - backend
removeExclusion: aSymbol

	self parent parent announceDefinitionChangeDuring: [ 
		self backend forBehavior removeExclusion: aSymbol from: self. ].