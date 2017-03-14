visiting - operators
visitSubtractionExpression: aSubtractionExpression
	^ self
		emitBinaryArithmeticExpression: aSubtractionExpression
		withOperator: '-'