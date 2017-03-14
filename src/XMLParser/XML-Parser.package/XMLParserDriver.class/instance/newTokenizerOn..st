instance creation
newTokenizerOn: aStringOrStream
	^ self tokenizerClass
		driver: self
		on: aStringOrStream
		readLimit: self readLimit