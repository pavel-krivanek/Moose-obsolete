accessing - key
atKey: key
	
	^self
		atKey: key
		ifAbsent: [self error: 'key not found']