private - backend access
pvtAddExclusion: aSymbol


	exclusions isRingResolved ifFalse: [ 
		self pvtCleanExclusions  ].
	
	exclusions add: aSymbol.	