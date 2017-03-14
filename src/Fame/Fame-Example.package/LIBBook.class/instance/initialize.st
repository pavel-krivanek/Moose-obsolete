initialize-release
initialize
	super initialize.
	title := nil.
	authors := FMMultiMultivalueLink on: self opposite: #books.