accessing - key
keyOf: index
	
	^self
		keyOf: index
		ifAbsent: [self error: 'value not found']