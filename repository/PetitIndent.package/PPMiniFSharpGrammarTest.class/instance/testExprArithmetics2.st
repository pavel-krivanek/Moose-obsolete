as yet unclassified
testExprArithmetics2
	self parse: '1+2+3' rule: #expr.
	self assert: result size = 3.
	self assert: result first = 1.
	self assert: result second = 2.
	self assert: result third = 3.