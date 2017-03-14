printing
printOn: aStream
	
	aStream
		nextPutAll: self mooseName asString;
		space;
		nextPutAll: '(' , self versions size printString , ')'