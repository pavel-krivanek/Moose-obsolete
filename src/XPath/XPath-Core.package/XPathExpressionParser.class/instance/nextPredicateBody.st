parsing
nextPredicateBody
	handler handleStartPredicate.
	self nextOrExpression.
	self peekForEndPredicate
		ifFalse: [self errorExpectedEndPredicate].
	handler handleEndPredicate.