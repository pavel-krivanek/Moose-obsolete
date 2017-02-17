reading
readFrom: aStream withBase: aBase upTo: anInteger
	^ (self on: aStream)
		nextIntegerWithBase: aBase
		upTo: anInteger