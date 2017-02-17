printing
printOn: aStream
	super printOn: aStream.
	name
		ifNotNil: [ 
			aStream
				nextPut: $[;
				nextPutAll: self fullName;
				nextPut: $] ]