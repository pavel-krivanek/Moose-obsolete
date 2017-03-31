printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	center printOn: aStream.
	aStream nextPutAll: ' radius: '.
	aStream nextPutAll: radius asString.
	aStream nextPut: $)