testing
hasLiteralExpression
	^ self expression isLiteral
		or: [self otherExpression isLiteral]