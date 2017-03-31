errors
errorExpected: aDescription butGot: aCharacter
	self
		formatParseError: 'Expected {1} but got "{2}"'
		with: aDescription
		with: (aCharacter ifNil: [''])