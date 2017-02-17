private
popAnyEqualityExpressionNodes
	[self topOperatorNode isEqualityExpression]
		whileTrue: [self popBinaryOperatorNode]