test-grammar
testExpression
	true ifTrue: [ ^ 'not yet in a grammar' ].
	
	self parse: 'x < y' rule: #expression.
	self parse: 'x == y' rule: #expression.
	self parse: 'a + b + c' rule: #expression.
	self parse: 'a + (b) + c' rule: #expression.