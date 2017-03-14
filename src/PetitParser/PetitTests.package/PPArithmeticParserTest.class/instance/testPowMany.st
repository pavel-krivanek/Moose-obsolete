testing-operations
testPowMany
	self assert: '4 ^ 3' is: 64.
	self assert: '4 ^ 3 ^ 2' is: 262144.
	self assert: '4 ^ 3 ^ 2 ^ 1' is: 262144.
	self assert: '4 ^ 3 ^ 2 ^ 1 ^ 0' is: 262144