parsing
referenceName: name
	
	shouldSkip 
		ifTrue: [ ^self ]
		ifFalse: [^ parserClient referenceName:  name].