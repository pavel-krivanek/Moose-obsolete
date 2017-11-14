basic
nextTwoBytesFromStream: aStream
	^ ((aStream basicNext
			ifNil: [^ nil]) asciiValue) +
		((aStream basicNext
			ifNil: [self errorBadCharacterEncoding]) asciiValue bitShift: 8)