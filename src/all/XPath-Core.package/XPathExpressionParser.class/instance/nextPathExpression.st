parsing
nextPathExpression
	handler handleStartPathExpression.
	self peekForLocationPathExpression
		ifFalse: [
			self
				nextFilterExpression;
				peekForFilterExpressionLocationPath].
	handler handleEndPathExpression.