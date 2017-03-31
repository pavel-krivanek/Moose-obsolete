running
testEmptyExportString
	p fromString: ''.
	p Document.
	r exportString should = '()'