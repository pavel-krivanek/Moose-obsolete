printing
storeOn: aStream
	aStream nextPut: $(.
	self class storeOn: aStream.
	aStream
		nextPutAll: ' property: ';
		store: self fameProperty;
		nextPut: $)