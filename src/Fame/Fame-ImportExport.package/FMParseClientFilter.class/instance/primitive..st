parsing
primitive: value
	
	shouldSkip 
		ifTrue: [ ^self ]
		ifFalse: [^ parserClient primitive: value].