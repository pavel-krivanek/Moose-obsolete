parsing - peeking
peekForPredicate
	self peekForStartPredicate
		ifTrue: [
			self nextPredicateBody.
			^ true]
		ifFalse: [^ false]