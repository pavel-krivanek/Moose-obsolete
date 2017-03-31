tests
testDedentOL2
	context indentStack push: 1.
	context indentStack push: 3.
	context indentStack push: 5.

	self assert: dedent parse: ''.
	self assert: context indentStack top = 3.

	self assert: dedent parse: ''.
	self assert: context indentStack top = 1.
