running
testWhitespaceString
	self assert: (MalTermScanner scan: '               ') isEmpty.
	self assert: (MalTermScanner scan: 'foo') asArray equals: #('foo').
	self assert: (MalTermScanner scan: '  foo  ') asArray equals: #('foo')