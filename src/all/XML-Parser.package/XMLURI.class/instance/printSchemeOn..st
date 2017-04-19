printing
printSchemeOn: aStream
	self hasScheme
		ifTrue: [
			aStream
				nextPutAll: self scheme;
				nextPut: $:]