printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPut: $(;
		print: self identityHash; "only print ids to avoid loops"
		nextPutAll: ': ';
		print: leftBranch identityHash;
		nextPutAll: ' | ';
		print: rightBranch identityHash;
		nextPut: $).