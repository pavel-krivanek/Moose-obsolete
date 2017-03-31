testing
compiledExpressionCacheEnabled
	^ compiledExpressionCacheEnabled
		ifNil: [compiledExpressionCacheEnabled := true]