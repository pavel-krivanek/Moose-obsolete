printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self publicID
		ifEmpty: [aStream nextPutAll: 'SYSTEM']
		ifNotEmpty: [
			aStream
				nextPutAll: 'PUBLIC "';
				nextPutAll: self publicID;
				nextPut: $"].
	aStream
		nextPutAll: ' "';
		nextPutAll: self systemID;
		nextPutAll: '")'.