decoding
nextFromStream: aStream
	^ self
		codePointFromFirstByte:
			(aStream basicNext
				ifNil: [^ nil]) asciiValue
		secondByte:
			(aStream basicNext
				ifNil: [self errorBadCharacterEncoding]) asciiValue
		thirdByte:
			(aStream basicNext
				ifNil: [self errorBadCharacterEncoding]) asciiValue
		fourthByte:
			(aStream basicNext
				ifNil: [self errorBadCharacterEncoding]) asciiValue