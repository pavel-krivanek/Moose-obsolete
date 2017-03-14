private
popAnyAdditiveExpressionNodes
	[self topOperatorNode isAdditiveExpression]
		whileTrue: [self popBinaryOperatorNode]