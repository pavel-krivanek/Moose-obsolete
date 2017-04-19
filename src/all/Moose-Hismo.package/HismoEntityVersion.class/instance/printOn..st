printing
printOn: aStream
	aStream
		nextPutAll: self class name;
		nextPutAll: ' with ';
		nextPutAll: self versionEntity printString.
	self referenceVersion ifNotNil: [ :rv | aStream
		nextPutAll: ' (';
		nextPutAll: rv name;
		nextPutAll: ')']