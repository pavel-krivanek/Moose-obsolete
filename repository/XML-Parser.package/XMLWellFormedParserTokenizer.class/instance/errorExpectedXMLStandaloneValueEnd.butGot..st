errors
errorExpectedXMLStandaloneValueEnd: aQuote butGot: aCharacter
	self
		errorExpectedQuote: aQuote
		ending: '<?xml ...?> standalone value'
		butGot: aCharacter