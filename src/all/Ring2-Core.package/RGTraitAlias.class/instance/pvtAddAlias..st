private - backend access
pvtAddAlias: aSymbol

	aliases isRingResolved ifFalse: [ 
		self pvtCleanAliases  ].
	
	aliases add: aSymbol.	