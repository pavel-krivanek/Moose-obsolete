connecting
connectToFragment: aFragment
	self connectToState: aFragment firstState.
	terminalStates := aFragment terminalStates.