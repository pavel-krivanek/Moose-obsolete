tests
testExpressionParser
	self
		assert: self expressionParser
		parse: '2*(3+4)'
		to: #($2 $* ($( ($3 $+ $4) $)))