running
testNonLetter
	self assert: (MalTermScanner scan: '123456') isEmpty.
	self assert: (MalTermScanner scan: 'abc123abc') asArray equals: #('abc' 'abc')