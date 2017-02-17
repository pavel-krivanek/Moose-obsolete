instance creation
onClient: aFMParserClient withFilter: aCollectionOfElementNames
	
	^ self new parserClient: aFMParserClient; filter: aCollectionOfElementNames ; yourself .