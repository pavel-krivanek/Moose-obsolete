testing
atEnd
	^ peekChar == nil
		and: [stream atEnd]