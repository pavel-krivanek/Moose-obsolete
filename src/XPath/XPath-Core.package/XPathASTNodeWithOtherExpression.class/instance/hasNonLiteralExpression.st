testing
hasNonLiteralExpression
	^ self expression isLiteral not
		or: [self otherExpression isLiteral not]