basic
nextFourBytesFromStream: aStream
	^ ((aStream basicNext
			ifNil: [^ nil]) asciiValue bitShift: 24) +
		((aStream basicNext
			ifNil: [self errorBadCharacterEncoding]) asciiValue bitShift: 16) +
		((aStream basicNext
			ifNil: [self errorBadCharacterEncoding]) asciiValue bitShift: 8) +
		(aStream basicNext
			ifNil: [self errorBadCharacterEncoding]) asciiValue