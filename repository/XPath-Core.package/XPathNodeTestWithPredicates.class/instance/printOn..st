printing
printOn: aStream
	super printOn: aStream.
	aStream nextPut: $(.
	self nodeTest printOn: aStream.
	aStream nextPutAll: '; '.
	self predicates printOn: aStream.
	aStream nextPut: $).