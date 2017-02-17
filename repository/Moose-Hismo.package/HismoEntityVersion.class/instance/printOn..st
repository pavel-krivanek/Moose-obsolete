printing
printOn: aStream
	
	aStream
		nextPutAll: self class name;
		nextPutAll: ' with ';
		nextPutAll: self versionEntity printString;
		nextPutAll: ' (' , self referenceVersion name , ')'