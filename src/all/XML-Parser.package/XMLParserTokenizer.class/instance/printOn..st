printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		print: state;
		nextPutAll: '; ';
		print: streamReader;
		nextPut: $).