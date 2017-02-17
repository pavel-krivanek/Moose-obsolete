accessing
compiledExpressionCacheAt: anExpressionSourceString
	^ self compiledExpressionCache
		at: anExpressionSourceString
		ifAbsent: [nil]