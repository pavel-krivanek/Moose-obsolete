parsing
referenceNumber: index
	
	shouldSkip 
		ifTrue: [ ^self ]
		ifFalse: [^ parserClient referenceNumber:  index].