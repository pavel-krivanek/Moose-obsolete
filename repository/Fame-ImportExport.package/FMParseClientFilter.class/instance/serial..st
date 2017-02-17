parsing
serial: index
	
	shouldSkip 
		ifTrue: [ ^self ]
		ifFalse: [^ parserClient serial: index].