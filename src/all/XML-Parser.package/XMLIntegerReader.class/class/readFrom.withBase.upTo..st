reading
readFrom: aStream withBase: aBase upTo: aReadLimit
	^ (self on: aStream)
		nextIntegerWithBase: aBase
		upTo: aReadLimit