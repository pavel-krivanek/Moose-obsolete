as yet unclassified
testExprArithmetics
	self parse: '1+2' rule: #expr.
	self assert: result size = 2.
	self assert: result first = 1.
	self assert: result second = 2.