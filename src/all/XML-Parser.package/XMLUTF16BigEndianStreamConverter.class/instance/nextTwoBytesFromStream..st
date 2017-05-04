private
nextTwoBytesFromStream: aStream
	^ ((aStream basicNext
			ifNil: [^ nil]) asciiValue bitShift: 8) +
		(aStream basicNext
			ifNil: [self errorBadCharacterEncoding]) asciiValue