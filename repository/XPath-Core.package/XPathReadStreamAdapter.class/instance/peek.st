accessing
peek
	stream atEnd
		ifTrue: [^ nil]
		ifFalse: [^ stream peek]