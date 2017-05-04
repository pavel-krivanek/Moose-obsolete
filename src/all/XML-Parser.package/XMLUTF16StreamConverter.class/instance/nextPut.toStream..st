encoding
nextPut: aCharacter toStream: aStream
	| codePoint |

	(codePoint := aCharacter asciiValue) < 16r10000
		ifTrue: [
			"check for the reserved surrogate pair code points"
			(codePoint >= 16rD800
				and: [codePoint <= 16rDFFF])
				ifTrue: [self errorBadCharacterValue: codePoint].
			self
				nextPutTwoBytes: codePoint
				toStream: aStream]
		ifFalse: [
			codePoint > 16r10FFFF "max code point"
				ifTrue: [self errorBadCharacterValue: codePoint].
			codePoint := codePoint - 16r10000.
			"the 10 high-order bits"
			self
				nextPutTwoBytes: 16rD800 + ((codePoint bitShift: -10) bitAnd: 16r3FF)
				toStream: aStream.
			"the 10 low-order bits"
			self
				nextPutTwoBytes: 16rDC00 + (codePoint bitAnd: 16r3FF)
				toStream: aStream]