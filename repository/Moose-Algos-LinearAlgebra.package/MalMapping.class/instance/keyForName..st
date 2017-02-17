accessing - name
keyForName: name
	
	^self
		keyForName: name
		ifAbsent: [self error: 'key not found']