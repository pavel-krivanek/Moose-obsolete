test-grammar
testUnknownStmt
	parser := self parserInstanceFor: #unknownStmt.
	
	self assert: parser parse: 'whatever'.
	self assert: parser fail: '  whatever'.
	self assert: parser parse: 'whatever foo,
	bar' end: 13.
	
	self assert: parser parse: 'whtever [ foo, bar
		baz ]'.