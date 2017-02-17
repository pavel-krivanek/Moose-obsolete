converting
combinedTerminalStatesFrom: aFragment
	^ terminalStates isCollection
		ifTrue: [aFragment terminalStatesAddedTo: terminalStates]
		ifFalse: [
			aFragment terminalStates isCollection
				ifTrue: [self terminalStatesAddedTo: aFragment terminalStates]
				ifFalse: [
					self
						terminalStateCollectionWith: terminalStates
						and: aFragment terminalStates]]