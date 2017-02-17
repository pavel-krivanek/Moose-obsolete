private
errorUnresolvableExternalEntityURI: anXMLURIOrURIString
	XMLParserException
		formatSignal: 'Unresolvable external entity URI: {1}'
		with: anXMLURIOrURIString asString