testing-operations
testPow
	self assert: '2 ^ 3' is: 8.
	self assert: '-2 ^ 3' is: -8.
	self assert: '-2 ^ -3' is: -0.125