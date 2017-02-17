printing
printFragmentOn: aStream
	self hasFragment
		ifTrue: [
			aStream
				nextPut: $#;
				nextPutAll: self rawFragment]