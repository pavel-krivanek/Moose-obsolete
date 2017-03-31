errors
errorExpectedLiteral: anExpectedCharacterOrString butGot: aReceivedCharacterOrString
	self
		formatParseError: 'Expected "{1}" but got "{2}"' 
		with: anExpectedCharacterOrString
		with: (aReceivedCharacterOrString ifNil: [''])