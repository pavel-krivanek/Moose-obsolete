testing
atEnd
	wasClosed
		ifTrue: [self errorClosedStreamCannotBeSent: #atEnd].
	^ stream atEnd