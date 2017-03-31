private
terminalStatesAddedTo: aCollection
	terminalStates isCollection
		ifTrue: [aCollection addAll: terminalStates]
		ifFalse: [aCollection addLast: terminalStates].
	^ aCollection.