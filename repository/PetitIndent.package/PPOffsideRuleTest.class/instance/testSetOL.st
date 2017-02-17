tests
testSetOL
	self assert: setOL parse: ''.
	self assert: context indentStack top = 1.

