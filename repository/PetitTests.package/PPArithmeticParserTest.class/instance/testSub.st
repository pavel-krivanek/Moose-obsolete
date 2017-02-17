testing-operations
testSub
	self assert: '1 - 2' is: -1.
	self assert: '1.2 - 1.2' is: 0.
	self assert: '1 - -2' is: 3.
	self assert: '-1 - -2' is: 1