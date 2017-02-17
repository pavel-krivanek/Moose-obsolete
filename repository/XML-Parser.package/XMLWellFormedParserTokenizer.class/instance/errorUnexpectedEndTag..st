errors
errorUnexpectedEndTag: anElement
	self
		formatParseError: 'Unexpected end tag </{1}> before any start tag'
		with: anElement