testing-operations
testMulMany
	self assert: '1 * 2' is: 2.
	self assert: '1 * 2 * 3' is: 6.
	self assert: '1 * 2 * 3 * 4' is: 24.
	self assert: '1 * 2 * 3 * 4 * 5' is: 120