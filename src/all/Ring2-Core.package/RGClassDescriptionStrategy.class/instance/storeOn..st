printing
storeOn: aStream
	aStream
		nextPutAll: '(';
		nextPutAll: self storeName;
		nextPutAll: ' named: '.
	self owner  name storeOn: aStream.
	aStream nextPut: $)