printing
printOn: aStream
	aStream 
		nextPut: $[;
		nextPut: $@;
		nextPutAll: self name;
		nextPut: $=;
		nextPut: $"; nextPutAll: self value; nextPut: $";   
		nextPut: $]