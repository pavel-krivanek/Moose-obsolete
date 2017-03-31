connecting
connectToState: aState
	terminalStates isCollection
		ifTrue: [terminalStates do: [:each | each connectToState: aState]]
		ifFalse: [terminalStates connectToState: aState]