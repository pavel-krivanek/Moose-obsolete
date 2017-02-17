testing
hasNumberLiteralExpression
	^ self expression isNumberLiteral
		or: [self otherExpression isNumberLiteral]