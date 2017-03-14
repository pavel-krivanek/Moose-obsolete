parsing
exampleOn: aStream
	aStream nextPutAll: '~~~~ '.
	island exampleOn: aStream .
	aStream nextPutAll:  ' ~~~~'.