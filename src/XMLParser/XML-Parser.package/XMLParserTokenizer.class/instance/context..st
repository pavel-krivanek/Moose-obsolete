accessing
context: aTokenContext
	(context := aTokenContext) isContentContext
		ifTrue: [elementNester := driver newElementNester].
	driver decodesCharacters
		ifTrue: [
			context supportsEncodingDetection
				ifTrue: [streamReader detectEncoding]]
		ifFalse: [streamReader decodeStreamWithNullConverter].