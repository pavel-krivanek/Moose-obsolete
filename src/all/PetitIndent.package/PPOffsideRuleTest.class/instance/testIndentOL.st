tests
testIndentOL
	context indentStack push: 1.
	self assert: indent parse: ' ' to: #indent.
	
	self assert: context indentStack top = 2.
