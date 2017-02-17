errors
errorExpectedSystemIDLiteralEnd: aQuote butGot: aCharacter
	self
		errorExpectedQuote: aQuote
		ending: 'system ID literal'
		butGot: aCharacter