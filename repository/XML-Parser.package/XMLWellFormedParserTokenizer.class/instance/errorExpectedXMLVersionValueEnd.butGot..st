errors
errorExpectedXMLVersionValueEnd: aQuote butGot: aCharacter
	self
		errorExpectedQuote: aQuote
		ending: '<?xml ...?> version value'
		butGot: aCharacter