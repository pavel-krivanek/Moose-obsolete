decoding
convertFromEncoding: anEncodingName
	driver decodesCharacters
		ifTrue: [streamReader convertFromEncoding: anEncodingName]