parsing
nextUnionExpression
	handler handleStartUnionExpression.
	self nextPathExpression.
	[self peekForUnionOperator]
		whileTrue: [self nextPathExpression].
	handler handleEndUnionExpression.