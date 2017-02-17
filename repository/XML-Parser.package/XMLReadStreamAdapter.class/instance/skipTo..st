positioning
skipTo: anObject
	[self atEnd]
		whileFalse: [
			self next = anObject
				ifTrue: [^ true]].
	^ false.