printing
printOn: aStream
	aStream 
		nextPutAll: (self message ifNil: ['<message not specified>']); 
		nextPutAll: ' at '; print: self position