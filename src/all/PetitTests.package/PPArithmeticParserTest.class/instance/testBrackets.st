testing-expression
testBrackets
	self assert: '(1)' is: 1.
	self assert: '(1 + 2)' is: 3.
	
	self assert: '((1))' is: 1.
	self assert: '((1 + 2))' is: 3.

	self assert: '2 * (3 + 4)' is: 14.
	self assert: '(2 + 3) * 4' is: 20.
	self assert: '6 / (2 + 4)' is: 1.
	self assert: '(2 + 6) / 2' is: 4