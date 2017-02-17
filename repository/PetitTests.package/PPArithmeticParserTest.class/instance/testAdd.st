testing-operations
testAdd
	self assert: '1 + 2' is: 3.
	self assert: '2 + 1' is: 3.
	self assert: '1 + 2.3' is: 3.3.
	self assert: '2.3 + 1' is: 3.3.
	self assert: '1 + -2' is: -1.
	self assert: '-2 + 1' is: -1