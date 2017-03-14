testing-operations
testDivMany
	self assert: '100 / 2' is: 50.
	self assert: '100 / 2 / 2' is: 25.
	self assert: '100 / 2 / 2 / 5' is: 5.
	self assert: '100 / 2 / 2 / 5 / 5' is: 1
	