private
popAnyAndExpressionNodes
	[self topOperatorNode isAndExpression]
		whileTrue: [self popBinaryOperatorNode]