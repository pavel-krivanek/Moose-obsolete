private
optimizeParsedExpression: anExpressionAST
	^ self optimizerClass new
		visitNode: anExpressionAST