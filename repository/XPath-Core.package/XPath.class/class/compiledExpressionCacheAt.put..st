accessing
compiledExpressionCacheAt: anExpressionSourceString put: aCompiledXPath
	^ self compiledExpressionCache
		at: anExpressionSourceString
		put: aCompiledXPath