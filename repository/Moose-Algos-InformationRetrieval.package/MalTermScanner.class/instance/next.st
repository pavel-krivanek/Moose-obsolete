scanning
next
	
	^term == Void
		ifTrue: [self privateNext]
		ifFalse:
			[ |result|
			result := term.
			term := Void.
			result]