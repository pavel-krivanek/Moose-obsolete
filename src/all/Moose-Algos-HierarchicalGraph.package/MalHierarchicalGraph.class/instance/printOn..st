printing
printOn: aStream
	aStream
		nextPutAll: 'HiGraph: (n: ';
		nextPutAll: self nodesDict size printString;
		nextPutAll: ', e: ';
		nextPutAll: self edges size printString;
		nextPutAll: ')'.