testing-operations
testSubMany
	self assert: '1' is: 1.
	self assert: '1 - 2' is: -1.
	self assert: '1 - 2 - 3' is: -4.
	self assert: '1 - 2 - 3 - 4' is: -8.
	self assert: '1 - 2 - 3 - 4 - 5' is: -13