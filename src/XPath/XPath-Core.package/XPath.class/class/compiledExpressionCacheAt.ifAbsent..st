accessing
compiledExpressionCacheAt: anExpressionSourceString ifAbsent: aBlock
	^ self compiledExpressionCache
		at: anExpressionSourceString
		ifAbsent: aBlock