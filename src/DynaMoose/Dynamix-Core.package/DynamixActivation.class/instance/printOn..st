printing
printOn: aStream
	aStream
		nextPutAll: 'an ';
		nextPutAll: self class name;
		space.
	self method
		ifNotNil: [ 
			aStream
				nextPut: ${;
				nextPutAll: self method name;
				nextPut: $} ]