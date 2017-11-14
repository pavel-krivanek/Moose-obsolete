reading
readFrom: aStream withBase: aFirstBase andPrefixes: aCharacterCollection orBase: aSecondBase upTo: aReadLimit
	^ (self on: aStream)
		nextIntegerWithBase: aFirstBase
		andPrefixes: aCharacterCollection
		orBase: aSecondBase
		upTo: aReadLimit