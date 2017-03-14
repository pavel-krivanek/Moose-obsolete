visiting - operators
visitMultiplicationExpression: aMultiplicationExpression
	^ self
		emitBinaryArithmeticExpression: aMultiplicationExpression
		withOperator: '*'