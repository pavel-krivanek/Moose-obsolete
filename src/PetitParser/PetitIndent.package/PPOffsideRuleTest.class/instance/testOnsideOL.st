tests
testOnsideOL
	context indentStack push: 1.
	self assert: onside fail: ''.

	context indentStack push: 2.
	self assert: onside fail: ''.	
	
	context indentStack push: 0.
	self assert: onside parse: ''.	