instance creation
driver: aDriver on: aStringOrStream
	^ self new
		setDriver: aDriver
		tokenizer: (aDriver newTokenizerOn: aStringOrStream)