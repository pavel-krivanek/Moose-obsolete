parsing
beginAttribute: name
	
	shouldSkip 
		ifTrue: [ ^self ]
		ifFalse: [^ parserClient beginAttribute: name].