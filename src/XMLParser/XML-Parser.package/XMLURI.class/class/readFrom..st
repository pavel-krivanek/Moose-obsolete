instance creation
readFrom: aStringOrStream
	aStringOrStream isStream
		ifTrue: [^ self fromStream: aStringOrStream]
		ifFalse: [^ self fromString: aStringOrStream]