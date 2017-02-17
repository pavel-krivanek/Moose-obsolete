printing
printSchemeOn: aStream
	self hasScheme
		ifTrue: [
			aStream "do not percent encode scheme"
				nextPutAll: self scheme;
				nextPut: $:]