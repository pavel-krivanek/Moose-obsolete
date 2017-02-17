printing
printNameOn: aStream
	aStream
		nextPut: ${;
		nextPutAll: self uri;
		nextPut: $}.
	super printNameOn: aStream.