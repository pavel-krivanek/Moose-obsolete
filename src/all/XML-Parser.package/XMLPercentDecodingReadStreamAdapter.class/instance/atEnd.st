testing
atEnd
	^ peekChar == nil
		and: [stream atEnd
			or: [stream peek ~~ $%]]