accessing
nextIntegerPrintedOn: aStream
	^ (XMLIntegerReader on: self)
		printStream: aStream;
		nextIntegerWithBase: 16
			andPrefixes: self hexIntegerPrefixes
			orBase: 10