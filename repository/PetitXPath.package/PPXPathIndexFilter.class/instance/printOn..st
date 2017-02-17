printing
printOn: aStream
	aStream 
		nextPut: $[;
		nextPutAll: self index asString;  
		nextPut: $]