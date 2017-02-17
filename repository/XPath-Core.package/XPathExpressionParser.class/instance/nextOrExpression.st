parsing
nextOrExpression
	handler handleStartOrExpression.
	self nextAndExpression.
	[self peekForOrOperator]
		whileTrue: [
			handler handleOrOperator.
			self nextAndExpression].
	handler handleEndOrExpression.