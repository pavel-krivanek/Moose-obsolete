printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self publicID isEmpty
		ifTrue: [aStream nextPutAll: 'SYSTEM']
		ifFalse: [
			aStream
				nextPutAll: 'PUBLIC "';
				nextPutAll: self publicID;
				nextPut: $"].
	aStream
		nextPutAll: ' "';
		nextPutAll: self systemID;
		nextPutAll: '")'.