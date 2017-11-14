accessing
state: aTokenState
	(state := aTokenState) isContentState
		ifTrue: [elementNester := driver elementNester].
	driver decodesCharacters
		ifTrue: [
			state supportsEncodingDetection
				ifTrue: [streamReader detectEncoding]]
		ifFalse: [streamReader decodeStreamWithNullConverter].