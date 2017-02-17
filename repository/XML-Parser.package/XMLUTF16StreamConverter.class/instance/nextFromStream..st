decoding
nextFromStream: aStream
	| codePoint |

	codePoint :=
		self
			codePointFromFirstByte:
				(aStream basicNext
					ifNil: [^ nil]) asciiValue
			secondByte:
				(aStream basicNext
					ifNil: [self errorBadCharacterEncoding]) asciiValue.

	(codePoint < 16rD800 or: [codePoint > 16rDBFF])
		ifTrue: [^ self characterFromCodePoint: codePoint]
		ifFalse: [
			^ self
				surrogatePairFromStream: aStream
				withHighSurrogate: codePoint]