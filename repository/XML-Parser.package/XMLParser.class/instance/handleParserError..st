private
handleParserError: anError
	self tokenizer closeStreams.

	anError isXMLParserException
		ifFalse: [anError pass].

	(anError hasLineNumber
		or: [self currentLineNumber isNil])
		ifFalse: [anError lineNumber: self currentLineNumber].
	(anError hasColumnNumber
		or: [self currentColumnNumber isNil])
		ifFalse: [anError columnNumber: self currentColumnNumber].
	(anError hasBaseURI
		or: [self baseURI isEmpty])
		ifFalse: [anError baseURI: self baseURI].

	anError shouldPassOnWhenCaught
		ifTrue: [anError pass].