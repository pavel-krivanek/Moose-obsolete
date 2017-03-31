tests
testDedentOL
	context indentStack push: 1.
	context indentStack push: 2.

	self assert: dedent parse: '' to: #dedent.
	self assert: context indentStack top = 1.
