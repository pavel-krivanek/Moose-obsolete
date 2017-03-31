parsing - peeking
peekForPredicates
	self peekForStartPredicate
		ifFalse: [^ false].
	handler handleStartPredicates.
	self nextPredicateBody.
	[self peekForPredicate] whileTrue.
	handler handleEndPredicates.
	^ true.