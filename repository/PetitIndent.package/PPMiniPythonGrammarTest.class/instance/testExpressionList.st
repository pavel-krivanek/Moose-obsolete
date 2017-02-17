test-grammar
testExpressionList
	true ifTrue: [ ^ 'not yet in a grammar' ].

	self parse: 'x < y , x == y' rule: #expressionList.