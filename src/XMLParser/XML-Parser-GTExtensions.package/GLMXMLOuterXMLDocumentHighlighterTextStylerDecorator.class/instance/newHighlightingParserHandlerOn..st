private
newHighlightingParserHandlerOn: aString
	^ (super newHighlightingParserHandlerOn: aString)
		configuration: self outerXMLNode configuration copy