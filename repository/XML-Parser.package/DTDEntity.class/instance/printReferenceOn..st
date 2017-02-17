printing
printReferenceOn: aStream
	aStream
		nextPut: self referencePrefix;
		nextPutAll: self name;
		nextPut: $;