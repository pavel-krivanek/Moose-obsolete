errors
errorInvalidCharacterReferenceCodePoint: aCodePoint
	self
		formatParseError: 'Invalid character reference to U+{1} code point'
		with: aCodePoint printStringHex