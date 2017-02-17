printing
printOn: aStream 
	 
	super printOn: aStream. 
	aStream nextPut: $(. 
	aStream nextPutAll: self size printString. 
	aStream nextPut: $)