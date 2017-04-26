instance creation
direction: aSymbol
	^ self strategy: (MooseQueryAbstractDirectionStrategy fromSymbol: aSymbol)