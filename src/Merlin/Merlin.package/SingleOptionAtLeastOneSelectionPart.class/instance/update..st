updating
update: aChange

	(self options includes: aChange) ifTrue: [
		"(self modelOf: aChange) contents
			ifTrue: [self selectOption: aChange]
			ifFalse: []."
			self selectOption: aChange
		
		]