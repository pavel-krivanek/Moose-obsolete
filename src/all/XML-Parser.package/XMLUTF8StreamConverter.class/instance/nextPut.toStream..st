encoding
nextPut: aCharacter toStream: aStream
	| codePoint |

	(codePoint := aCharacter asciiValue) < 16r80
		ifTrue: [
			aStream basicNextPut: aCharacter.
			^ self].

	codePoint < 16r800
		ifTrue: [
			aStream
				basicNextPutByte: 16rC0 + (codePoint bitShift: -6);
				basicNextPutByte: 16r80 + (codePoint bitAnd: 16r003F).
			^ self].

	codePoint < 16r10000
		ifTrue: [
			"check for the reserved surrogate pair code points"
			(codePoint >= 16rD800
				and: [codePoint <= 16rDFFF])
				ifTrue: [self errorBadCharacterValue: codePoint].
			aStream
				basicNextPutByte: 16rE0 + (codePoint bitShift: -12);
				basicNextPutByte: 16r80 + ((codePoint bitShift: -6) bitAnd: 16r3F);
				basicNextPutByte: 16r80 + (codePoint bitAnd: 16r3F).
			^ self].

	codePoint <= 16r10FFFF  "max code point"
		ifTrue: [
			aStream
				basicNextPutByte: 16rF0 + (codePoint bitShift: -18);
				basicNextPutByte: 16r80 + ((codePoint bitShift: -12) bitAnd: 16r3F);
				basicNextPutByte: 16r80 + ((codePoint bitShift: -6) bitAnd: 16r3F);
				basicNextPutByte: 16r80 + (codePoint bitAnd: 16r3F).
			^ self].

	self errorBadCharacterValue: codePoint.