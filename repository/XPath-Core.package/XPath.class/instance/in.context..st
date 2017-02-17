evaluating
in: aNode context: aContext
	^ self compiledExpression
		evaluateInNode: aNode
		withContext: aContext