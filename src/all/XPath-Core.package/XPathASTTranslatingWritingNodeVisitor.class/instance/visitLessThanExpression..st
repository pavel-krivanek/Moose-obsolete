visiting - operators
visitLessThanExpression: aLessThanExpression
	^ self
		emitBinaryRelationalExpression: aLessThanExpression
		withOperator: '<'