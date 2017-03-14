accessing
compiledExpression
	^ compiledExpression
		ifNil: [| cachedCompiledXPath |
			(self class compiledExpressionCacheEnabled
				and: [
					"avoid #compiledXPathCacheAt:ifAbsent: and
					#compiledXPathCacheAt:ifAbsentPut: here so the cache isn't
					locked during compilation, which could stall other processes"
					(cachedCompiledXPath :=
						self class compiledExpressionCacheAt:
							self expressionSource) notNil])
				ifTrue: [compiledExpression := cachedCompiledXPath]
				ifFalse: [self compileExpression].
			compiledExpression]