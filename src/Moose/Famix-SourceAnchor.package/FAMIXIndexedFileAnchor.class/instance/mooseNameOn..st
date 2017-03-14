accessing
mooseNameOn: aStream
	super mooseNameOn: aStream.
	aStream
		nextPut: $(;
		nextPut: $(;
		nextPutAll: self startPos asString;
		nextPut: $-;
		nextPutAll: self endPos asString;
		nextPut: $).
