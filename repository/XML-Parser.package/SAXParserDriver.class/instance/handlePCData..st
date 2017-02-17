handling
handlePCData: aString
	self isValidating
		ifTrue: [self validator validatePCData: aString].

	self saxHandler characters: aString.