visiting - operators
visitAndExpression: anAndExpression
	^ self
		emitBinaryShortCircuitExpression: anAndExpression
		withOperator: 'and:'