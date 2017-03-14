initialize-release
initialize
	super initialize.
	incomingIncludeRelations := FMNullMultivalueLink on: self opposite: #target: selector: #incomingIncludeRelations.
	outgoingIncludeRelations := FMNullMultivalueLink on: self opposite: #source: selector: #outgoingIncludeRelations.