private
popAnyMultiplicativeExpressionNodes
	[self topOperatorNode isMultiplicativeExpression]
		whileTrue: [self popBinaryOperatorNode]