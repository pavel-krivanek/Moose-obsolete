printing
printXmlOn: aStream
	aStream nextPutAll: '<!DOCTYPE'; nextPutAll: data; nextPut: $>