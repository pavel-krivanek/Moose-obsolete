accessing
peek
	stream atEnd
		ifTrue: [self errorAtEndStreamCannotBeSent: #peek].
	^ stream peek.