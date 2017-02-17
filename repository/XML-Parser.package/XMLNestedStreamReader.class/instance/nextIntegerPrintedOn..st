accessing
nextIntegerPrintedOn: aStream
	^ (XMLIntegerReader on: self)
		printStream: aStream;
		nextIntegerWithBase: 16 startingWithAny: 'x' orBase: 10