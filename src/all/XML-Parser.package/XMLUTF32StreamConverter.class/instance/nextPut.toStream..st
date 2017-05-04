encoding
nextPut: aCharacter toStream: aStream
	| codePoint |

	codePoint := aCharacter asciiValue.
	"check for the reserved surrogate pair code points and code points
	greater than the max code point"
	(codePoint >= 16rD800
		and: [codePoint <= 16rDFFF
			or: [codePoint > 16r10FFFF]])
		ifTrue: [self errorBadCharacterValue: codePoint].
	self
		nextPutFourBytes: codePoint
		toStream: aStream.