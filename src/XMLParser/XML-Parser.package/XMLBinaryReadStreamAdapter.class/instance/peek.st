accessing
peek
	stream atEnd
		ifTrue: [^ nil]
		ifFalse: [^ Character value: stream peek]