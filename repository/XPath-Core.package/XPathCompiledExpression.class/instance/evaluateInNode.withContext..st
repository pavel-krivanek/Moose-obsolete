evaluating
evaluateInNode: aNode withContext: aContext
	^ self block
		value: aNode
		value: aContext
		value: self nodeTests