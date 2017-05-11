initialize-release
initialize
	super initialize.
	types := FMNullMultivalueLink on: self opposite: #container: selector: #types.
