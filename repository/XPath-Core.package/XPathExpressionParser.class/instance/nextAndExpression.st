parsing
nextAndExpression
	handler handleStartAndExpression.
	self nextEqualityExpression.
	[self peekForAndOperator]
		whileTrue: [
			handler handleAndOperator.
			self nextEqualityExpression].
	handler handleEndAndExpression.