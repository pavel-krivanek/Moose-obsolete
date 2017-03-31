encoding
nextPut: aCharacter toStream: aStream
	| codePoint |

	(codePoint := self codePointFromCharacter: aCharacter) < 16r80
		ifTrue: [^ aStream basicNextPut: aCharacter].

	codePoint < 16r0800
		ifTrue: [
			^ aStream
				basicNextPutByte: 16rC0 + (codePoint bitShift: -6);
				basicNextPutByte: 16r80 + (codePoint bitAnd: 16r003F)].

	codePoint < 16r010000
		ifTrue: [
			^ aStream
				basicNextPutByte: 16rE0 + (codePoint bitShift: -12);
				basicNextPutByte: 16r80 + ((codePoint bitShift: -6) bitAnd: 16r3F);
				basicNextPutByte: 16r80 + (codePoint bitAnd: 16r3F)].

	aStream
		basicNextPutByte: 16rF0 + (codePoint bitShift: -18);
		basicNextPutByte: 16r80 + ((codePoint bitShift: -12) bitAnd: 16r3F);
		basicNextPutByte: 16r80 + ((codePoint bitShift: -6) bitAnd: 16r3F);
		basicNextPutByte: 16r80 + (codePoint bitAnd: 16r3F).