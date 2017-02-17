printing
printOn: aStream
	super printOn: aStream.
	self hasCurrentElementValidator
		ifTrue: [
			aStream
				nextPut: $(;
				print: self currentElementValidator;
				nextPut: $)].