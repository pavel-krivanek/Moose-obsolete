tests
testAlignsOL
	context indentStack push: 1.
	self assert: aligns parse: ''.

	context indentStack push: 2.
	self assert: aligns fail: ''.	
	
	context indentStack push: 0.
	self assert: aligns fail: ''.	