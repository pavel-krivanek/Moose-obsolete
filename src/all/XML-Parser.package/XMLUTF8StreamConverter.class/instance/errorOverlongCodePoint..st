private
errorOverlongCodePoint: aCodePoint
	XMLEncodingException
		formatSignal: 'Illegal overlong UTF-8 encoding for U+{1} code point'
		with: aCodePoint printStringHex