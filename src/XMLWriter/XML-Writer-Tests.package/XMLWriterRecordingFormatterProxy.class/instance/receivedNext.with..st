testing
receivedNext: aSelector with: anArgument
	^ self
		receivedNextAll: (Array with: aSelector)
		with: anArgument