accessing
next
	^ atEnd
		ifTrue: [nil]
		ifFalse: [
			atEnd := true.
			character]