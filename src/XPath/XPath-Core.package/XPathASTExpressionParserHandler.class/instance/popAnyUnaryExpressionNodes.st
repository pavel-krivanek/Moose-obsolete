private
popAnyUnaryExpressionNodes
	[self topOperatorNode isUnaryOperatorExpression]
		whileTrue: [self popUnaryOperatorNode]