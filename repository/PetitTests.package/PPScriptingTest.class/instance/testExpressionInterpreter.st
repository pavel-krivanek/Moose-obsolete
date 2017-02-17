tests
testExpressionInterpreter
	self 
		assert: self expressionInterpreter
		parse: '2*(3+4)'
		to: 14