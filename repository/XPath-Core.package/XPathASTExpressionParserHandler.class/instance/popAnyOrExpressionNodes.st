private
popAnyOrExpressionNodes
	[self topOperatorNode isOrExpression]
		whileTrue: [self popBinaryOperatorNode]