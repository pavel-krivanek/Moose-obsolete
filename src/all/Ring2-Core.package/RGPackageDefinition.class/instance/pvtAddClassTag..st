private - backend interface
pvtAddClassTag: aSymbol
	
	tagsForClasses isRingResolved ifFalse: [ 
		self pvtCleanTagsForClasses  ].
	
	tagsForClasses add: aSymbol.	
	