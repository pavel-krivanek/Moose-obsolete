handling
handleCData: aString
	self isValidating
		ifTrue: [self validator validatePCData: aString].

	self saxHandler
		isInCDataSection: true;
		startCData;
		characters: aString;
		endCData;
		isInCDataSection: false.