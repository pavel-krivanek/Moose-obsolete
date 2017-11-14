reading
readFrom: aStream withBase: aFirstBase andPrefixes: aCharacterCollection orBase: aSecondBase
	^ (self on: aStream)
		nextIntegerWithBase: aFirstBase
		andPrefixes: aCharacterCollection
		orBase: aSecondBase