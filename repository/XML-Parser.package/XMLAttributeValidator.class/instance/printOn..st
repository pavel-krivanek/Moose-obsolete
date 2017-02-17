printing
printOn: aStream
	super printOn: aStream.
	aStream
		nextPutAll: '(<';
		nextPutAll: self element;
		space;
		nextPutAll: self attribute;
		nextPutAll: '="">)'.