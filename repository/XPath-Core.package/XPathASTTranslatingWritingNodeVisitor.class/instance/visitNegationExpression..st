visiting - operators
visitNegationExpression: aNegationExpression
	self emit: $(.
	super visitNegationExpression: aNegationExpression.
	aNegationExpression expression type isNumberValueType
		ifFalse: [self emitNumberConversion].
	self emitAll: ' negated)'.
	^ aNegationExpression.