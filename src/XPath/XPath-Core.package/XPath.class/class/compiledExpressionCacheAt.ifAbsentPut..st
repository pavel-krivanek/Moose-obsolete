accessing
compiledExpressionCacheAt: anExpressionSourceString ifAbsentPut: aBlock
	^ self compiledExpressionCache
		at: anExpressionSourceString
		ifAbsentPut: aBlock