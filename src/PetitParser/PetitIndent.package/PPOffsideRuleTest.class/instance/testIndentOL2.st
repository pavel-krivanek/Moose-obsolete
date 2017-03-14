tests
testIndentOL2
	context indentStack push: 1.
	self assert: indent parse: '  '.
	self assert: context indentStack top = 3.
