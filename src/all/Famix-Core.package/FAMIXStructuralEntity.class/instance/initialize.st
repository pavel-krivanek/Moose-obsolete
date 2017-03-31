initialize-release
initialize
	super initialize.
	declaredType := nil.
	incomingAccesses := FMNullMultivalueLink on: self opposite: #variable: selector: #incomingAccesses.