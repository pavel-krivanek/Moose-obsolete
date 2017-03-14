accessing - name
nameForKey: key
	
	^self isRoot
		ifTrue: [self error: 'key not found']
		ifFalse: [parent nameForKey: (self atKey: key)]