basic
nextCodePointFromStream: aStream
	| codePoint |

	(codePoint := self nextFourBytesFromStream: aStream)
		ifNil: [^ nil].

	"check for the reserved surrogate pair code points and code points
	greater than the max code point"
	codePoint >= 16rD800
		ifTrue: [
			(codePoint <= 16rDFFF
				or: [codePoint > 16r10FFFF])
				ifTrue: [self errorBadCharacterValue: codePoint]].

	^ codePoint.