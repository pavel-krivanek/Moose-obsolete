printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		print: self nfaStates;
		nextPut: $).