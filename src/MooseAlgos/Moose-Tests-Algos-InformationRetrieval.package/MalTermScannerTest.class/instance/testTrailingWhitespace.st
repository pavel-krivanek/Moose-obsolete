running
testTrailingWhitespace
	self assert: (MalTermScanner scan: 'foo') asArray equals: #('foo').
	self assert: (MalTermScanner scan: '  foo  ') asArray equals: #('foo')