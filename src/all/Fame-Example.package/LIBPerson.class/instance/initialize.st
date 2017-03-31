initialize-release
initialize
	super initialize.
	books := FMMultiMultivalueLink on: self opposite: #authors.
	name := nil.