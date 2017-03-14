printing
printOn: aStream
	super printOn: aStream.
	self hasOpenElements
		ifTrue: [
			aStream nextPut: $(.
			self
				printElementsStartingAt: 1
				on: aStream.
			aStream nextPut: $)].