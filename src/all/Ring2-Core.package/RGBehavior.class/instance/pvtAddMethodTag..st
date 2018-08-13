private - backend access
pvtAddMethodTag: aSymbol
	
	tagsForMethods isRingResolved ifFalse: [ 
		self pvtCleanTagsForMethods  ].
	
	tagsForMethods add: aSymbol.	
	