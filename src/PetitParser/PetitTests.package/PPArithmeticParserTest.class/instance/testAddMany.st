testing-operations
testAddMany
	self assert: '1' is: 1.
	self assert: '1 + 2' is: 3.
	self assert: '1 + 2 + 3' is: 6.
	self assert: '1 + 2 + 3 + 4' is: 10.
	self assert: '1 + 2 + 3 + 4 + 5' is: 15