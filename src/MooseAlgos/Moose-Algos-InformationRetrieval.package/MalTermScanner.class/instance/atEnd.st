scanning
atEnd

	term == Void ifTrue: [term := self privateNext].	
	^term isNil