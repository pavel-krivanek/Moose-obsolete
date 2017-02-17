positioning
pushBack: aString
	aString size > 1
		ifTrue: [^ self pushBackStream: aString readStream].
	aString size = 1
		ifTrue: [self pushBackCharacter: (aString at: 1)]