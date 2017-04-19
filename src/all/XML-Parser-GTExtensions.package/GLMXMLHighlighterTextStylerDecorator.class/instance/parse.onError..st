parsing
parse: aString onError: aBlock
	aString size <= self highlightableLengthLimit
		ifTrue: [
			^ self
				highlightingParse: aString
				onError: aBlock]
		ifFalse: [^ self text]