converting
convert: aStringOrStream readLimit: aReadLimit
	^ (self
		on: aStringOrStream
		readLimit: aReadLimit) convert