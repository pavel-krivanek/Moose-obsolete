accessing
next
	stream atEnd
		ifTrue: [^ nil]
		ifFalse: [^ Character value: stream next]