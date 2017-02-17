positioning
skipTo: aCharacter
	[self atEnd]
		whileFalse: [
			self next = aCharacter
				ifTrue: [^ true]].
	^ false.