accessing
peek
	^ peekChar ifNil: [peekChar := self basicNext]