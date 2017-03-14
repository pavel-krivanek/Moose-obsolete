visiting - operators
visitEqualsExpression: anEqualsExpression
	^ self
		emitBinaryEqualityExpression: anEqualsExpression
		withOperator: '='