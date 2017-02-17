visiting - operators
visitOrExpression: anOrExpression
	^ self
		emitBinaryShortCircuitExpression: anOrExpression
		withOperator: 'or:'