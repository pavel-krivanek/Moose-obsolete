testing
atEnd
	^ super atEnd
		or: [stream peek ~~ $%]