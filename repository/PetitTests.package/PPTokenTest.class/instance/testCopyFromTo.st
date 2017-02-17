testing-copying
testCopyFromTo
	| result other |
	result := PPToken on: 'abc'.
	other := result copyFrom: 2 to: 2.
	self assert: other size equals: 1.
	self assert: other start equals: 2.
	self assert: other stop equals: 2.
	self assert: other collection equals: result collection