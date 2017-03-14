handling
handleEndDocument
	self isValidating
		ifTrue: [self validator validateEndDocument].

	self saxHandler endDocument.