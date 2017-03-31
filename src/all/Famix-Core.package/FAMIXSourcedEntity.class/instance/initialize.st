accessing
initialize

	super initialize.
	comments := FMNullMultivalueLink on: self opposite: #container: selector: #comments.