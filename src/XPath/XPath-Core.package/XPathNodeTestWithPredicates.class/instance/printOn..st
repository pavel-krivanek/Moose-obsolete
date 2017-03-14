printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		print: self nodeTest;
		nextPutAll: '; ';
		print: self predicates;
		nextPut: $).