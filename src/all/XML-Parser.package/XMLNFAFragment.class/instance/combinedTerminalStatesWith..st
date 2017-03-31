converting
combinedTerminalStatesWith: aState
	^ terminalStates isCollection
		ifTrue: [
			terminalStates
				addLast: aState;
				yourself]
		ifFalse: [self terminalStateCollectionWith: terminalStates and: aState]