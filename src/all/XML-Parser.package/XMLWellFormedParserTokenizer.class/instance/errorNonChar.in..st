errors
errorNonChar: aCharacter in: aDescription
	self
		formatParseError: 'Invalid character U+{1} in {2}'
		with: aCharacter asciiValue printStringHex
		with: aDescription