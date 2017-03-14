grammar-expressions
shiftExpression

	^ additiveExpression,
	(shiftOperator , additiveExpression) star