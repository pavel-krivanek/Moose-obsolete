visiting - operators
visitDivisionExpression: aDivisionExpression
	^ self
		emitBinaryArithmeticExpression: aDivisionExpression
		withOperator: 'xpathDivision:'