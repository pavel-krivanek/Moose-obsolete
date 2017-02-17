printing
printOn: aStream 
	aStream 
		nextPutAll: self tag;
		nextPutAll: self filter asString.  
