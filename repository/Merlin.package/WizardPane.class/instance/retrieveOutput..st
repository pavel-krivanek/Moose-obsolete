actions
retrieveOutput: anInformationSymbol

	partsAndInformationsAssociated keysAndValuesDo: [:aPart :aSymbol |
		aSymbol = anInformationSymbol ifTrue: [self retrieveOutputOf: aPart]
		].
