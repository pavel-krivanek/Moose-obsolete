running
testDanglingLetter
	self assert: (MalTermScanner scan: '   a') asArray equals: #('a')