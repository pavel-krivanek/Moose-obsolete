errors
errorExpectedXMLEncodingValueEnd: aQuote butGot: aCharacter
	self
		errorExpectedQuote: aQuote
		ending: '<?xml ...?> encoding value'
		butGot: aCharacter