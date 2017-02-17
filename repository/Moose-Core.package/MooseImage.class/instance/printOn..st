printing
printOn: aStream
	aStream 
		nextPutAll: 'Moose';
		cr;
		nextPutAll: self signature;
		cr;
		nextPutAll: self timeStamp asString