errors
errorExpectedQuote: aQuote ending: aDescription butGot: aCharacter
	self
		formatParseError: 'Expected end of {1} ({2}) quoted {3} but got "{4}"'
		with:
			(aQuote == $"
				ifTrue: ['double']
				ifFalse: ['single'])
		with: aQuote
		with: aDescription
		with: (aCharacter ifNil: [''])