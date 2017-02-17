positioning
position
	wasClosed
		ifTrue: [self errorClosedStreamCannotBeSent: #position].
	^ stream position