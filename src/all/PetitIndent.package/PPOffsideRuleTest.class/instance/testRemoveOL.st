tests
testRemoveOL
	context indentStack push: 1.
	
	self assert: removeOL parse: ''.
	self assert: context indentStack isEmpty.

