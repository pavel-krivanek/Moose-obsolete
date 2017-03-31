accessing
printOn: aStream
	aStream
		nextPutAll: 'Test: ';
		nextPutAll: model asString.