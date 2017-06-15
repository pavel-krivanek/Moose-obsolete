initialize-release
initialize
	super initialize.
	incomingAccesses := FMNullMultivalueLink on: self opposite: #variable: selector: #incomingAccesses.