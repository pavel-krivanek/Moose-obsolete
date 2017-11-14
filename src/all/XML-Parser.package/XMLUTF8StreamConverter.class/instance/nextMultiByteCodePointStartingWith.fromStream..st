basic
nextMultiByteCodePointStartingWith: aFirstByte fromStream: aStream
	| secondByte thirdByte codePoint |

	secondByte :=
		(aStream basicNext
			ifNil: [self errorBadCharacterEncoding]) asciiValue.
	(secondByte bitAnd: 16rC0) == 16r80
		ifFalse: [self errorBadCharacterEncoding].
	(aFirstByte bitAnd: 16rE0) == 16rC0 "two bytes"
		ifTrue: [
			codePoint :=
				((aFirstByte bitAnd: 16r1F) bitShift: 6) +
				(secondByte bitAnd: 16r3F).
			codePoint >= 16r80
				ifFalse: [self errorOverlongCodePoint: codePoint].
			^ codePoint].

	thirdByte :=
		(aStream basicNext
			ifNil: [self errorBadCharacterEncoding]) asciiValue.
	(thirdByte bitAnd: 16rC0) == 16r80
		ifFalse: [self errorBadCharacterEncoding].
	(aFirstByte bitAnd: 16rF0) == 16rE0 "three bytes"
		ifTrue: [
			codePoint :=
				((aFirstByte bitAnd: 16r0F) bitShift: 12) +
				((secondByte bitAnd: 16r3F) bitShift: 6) +
				(thirdByte bitAnd: 16r3F).
			"check for the reserved surrogate pair code points"
			codePoint >= 16rD800
				ifTrue: [
					codePoint <= 16rDFFF
						ifTrue: [self errorBadCharacterValue: codePoint]]
				ifFalse: [
					codePoint >= 16r800
						ifFalse: [self errorOverlongCodePoint: codePoint]].
			^ codePoint].

	(aFirstByte bitAnd: 16rF8) == 16rF0
		ifTrue: [| fourthByte |
			fourthByte :=
				(aStream basicNext
					ifNil: [self errorBadCharacterEncoding]) asciiValue.
			(fourthByte bitAnd: 16rC0) == 16r80
				ifFalse: [self errorBadCharacterEncoding].
			codePoint :=
				((aFirstByte bitAnd: 16r07) bitShift: 18) +
				((secondByte bitAnd: 16r3F) bitShift: 12) +
				((thirdByte bitAnd: 16r3F) bitShift: 6) +
				(fourthByte bitAnd: 16r3F).
			codePoint > 16r10FFFF "max code point"
				ifTrue: [self errorBadCharacterValue: codePoint].
			codePoint >= 16r10000
				ifFalse: [self errorOverlongCodePoint: codePoint].
			^ codePoint].

	"the first byte is malformed"
	self errorBadCharacterEncoding.