visiting - operators
visitAdditionExpression: anAdditionExpression
	^ self
		emitBinaryArithmeticExpression: anAdditionExpression
		withOperator: '+'