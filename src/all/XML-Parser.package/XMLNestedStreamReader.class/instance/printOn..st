printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: '(';
		print: peekChar;
		nextPutAll: '; ';
		print: stream;
		space;
		print: nestedStreams;
		nextPut: $).