accessing
upToEnd
	^ atEnd
		ifTrue: [String new]
		ifFalse: [
			atEnd := true.
			String with: character]