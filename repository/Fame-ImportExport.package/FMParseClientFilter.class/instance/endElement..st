parsing
endElement: name
	
	shouldSkip 
		ifTrue: [ ^self ]
		ifFalse: [^ parserClient endElement:  name].