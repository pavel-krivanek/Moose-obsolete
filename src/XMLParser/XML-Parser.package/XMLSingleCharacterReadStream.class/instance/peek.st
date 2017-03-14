accessing
peek
	^ atEnd
		ifTrue: [nil]
		ifFalse: [character]