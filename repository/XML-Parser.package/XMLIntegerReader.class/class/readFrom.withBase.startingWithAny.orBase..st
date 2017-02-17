reading
readFrom: aStream withBase: aFirstBase startingWithAny: aCharacterCollection orBase: aSecondBase
	^ (self on: aStream)
		nextIntegerWithBase: aFirstBase
		startingWithAny: aCharacterCollection
		orBase: aSecondBase