errors
errorExpectedPublicIDLiteralEnd: aQuote butGot: aCharacter
	self
		errorExpectedQuote: aQuote
		ending: 'public ID literal'
		butGot: aCharacter