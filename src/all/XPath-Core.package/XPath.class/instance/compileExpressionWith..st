compiling
compileExpressionWith: anExpressionCompiler
	compiledExpression :=
		anExpressionCompiler compileExpression: self expressionSource.
	self class compiledExpressionCacheEnabled
		ifTrue: [
			self class
				compiledExpressionCacheAt: self expressionSource
				put: compiledExpression].