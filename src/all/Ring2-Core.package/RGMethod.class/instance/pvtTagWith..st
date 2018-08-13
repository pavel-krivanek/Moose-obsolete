private - backend interface
pvtTagWith: aSymbol
	
	tags isRingResolved ifFalse: [ 
		self pvtCleanTags  ].
	
	tags add: aSymbol.	
	