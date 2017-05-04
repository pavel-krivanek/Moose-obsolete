private
errorBadCharacterValue: aValue
	XMLEncodingException
		formatSignal: 'Invalid {1} code point U+{1}'
		with: self encoding
		with: aValue printStringHex