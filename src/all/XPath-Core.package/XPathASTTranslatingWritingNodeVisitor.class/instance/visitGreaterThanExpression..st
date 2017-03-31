visiting - operators
visitGreaterThanExpression: aGreaterThanExpression
	^ self
		emitBinaryRelationalExpression: aGreaterThanExpression
		withOperator: '>'