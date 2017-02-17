compiling
compileExpressionWith: anExpressionCompiler
	compiledExpression :=
		anExpressionCompiler compile: self expressionSource.
	self class compiledExpressionCacheEnabled
		ifTrue: [
			self class
				compiledExpressionCacheAt: self expressionSource
				put: compiledExpression].