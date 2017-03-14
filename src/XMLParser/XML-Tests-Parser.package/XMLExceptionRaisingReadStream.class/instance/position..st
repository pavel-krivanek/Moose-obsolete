positioning
position: anInteger
	wasClosed
		ifTrue: [self errorClosedStreamCannotBeSent: #position:].
	stream position: anInteger.