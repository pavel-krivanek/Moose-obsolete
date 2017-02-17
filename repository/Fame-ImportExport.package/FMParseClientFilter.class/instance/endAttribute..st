parsing
endAttribute: name
	shouldSkip 
		ifTrue: [ ^self ]
		ifFalse: [^ parserClient endAttribute:  name].