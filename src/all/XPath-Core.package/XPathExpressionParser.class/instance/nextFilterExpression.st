parsing
nextFilterExpression
	handler handleStartFilterExpression.
	self
		nextPrimaryExpression;
		peekForPredicates.
	handler handleEndFilterExpression.