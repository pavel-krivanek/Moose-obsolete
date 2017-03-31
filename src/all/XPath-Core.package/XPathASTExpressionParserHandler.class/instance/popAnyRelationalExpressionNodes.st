private
popAnyRelationalExpressionNodes
	[self topOperatorNode isRelationalExpression]
		whileTrue: [self popBinaryOperatorNode]