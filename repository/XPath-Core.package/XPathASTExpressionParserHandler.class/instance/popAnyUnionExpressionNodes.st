private
popAnyUnionExpressionNodes
	[self topOperatorNode isUnionExpression]
		whileTrue: [self popBinaryOperatorNode]