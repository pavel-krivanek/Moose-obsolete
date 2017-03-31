printing
printOn: aStream
	super printOn: aStream.
	self hasCurentScope
		ifTrue: [
			aStream
				nextPut: $(;
				print: self currentScope;
				nextPut: $)].