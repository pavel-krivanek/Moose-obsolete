encoding
nextPut: aCharacter toStream: aStream
	aCharacter asciiValue > 255
		ifTrue: [self errorBadCharacterValue: aCharacter asciiValue].

	aStream basicNextPut: aCharacter.