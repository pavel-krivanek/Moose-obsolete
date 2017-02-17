positioning
reset
	wasClosed
		ifTrue: [self errorClosedStreamCannotBeSent: #reset].
	stream reset.