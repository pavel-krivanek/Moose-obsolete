parsing
nextUnaryExpression
	handler handleStartUnaryExpression.
	[self peekForNegationOperator]
		whileTrue: [handler handleNegationOperator].
	self nextUnionExpression.
	handler handleEndUnaryExpression.