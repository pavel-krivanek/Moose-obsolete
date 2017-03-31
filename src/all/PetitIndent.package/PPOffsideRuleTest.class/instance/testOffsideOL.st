tests
testOffsideOL
	context indentStack push: 1.
	self assert: offside fail: ''.

	context indentStack push: 2.
	self assert: offside parse: ''.	
	
	context indentStack push: 0.
	self assert: offside fail: ''.	