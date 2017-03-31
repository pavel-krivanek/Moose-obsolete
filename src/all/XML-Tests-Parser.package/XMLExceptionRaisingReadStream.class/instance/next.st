accessing
next
	stream atEnd
		ifTrue: [self errorAtEndStreamCannotBeSent: #next].
	^ stream next.