accessing
compiledExpressionCacheEnabled: aBoolean
	"This can be used to disable the XPath compiled expression cache"

	(compiledExpressionCacheEnabled := aBoolean)
		ifFalse: [self clearCompiledExpressionCache]