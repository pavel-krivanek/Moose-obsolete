errors
errorExpectedQuoteStarting: aDescription butGot: aCharacter
	self
		formatParseError:
			'Expected start of double (") or single ('') quoted {1} but got "{2}"'
		with: aDescription
		with: (aCharacter ifNil: [''])