private
compiledExpressionCache
	^ compiledExpressionCache
		ifNil: [compiledExpressionCache := XMLKeyValueCache maxSize: 512]