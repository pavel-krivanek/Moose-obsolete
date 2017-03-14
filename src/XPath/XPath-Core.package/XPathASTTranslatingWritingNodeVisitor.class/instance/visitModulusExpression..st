visiting - operators
visitModulusExpression: aModulusExpression
	^ self
		emitBinaryArithmeticExpression: aModulusExpression
		withOperator: 'xPathModulus:'