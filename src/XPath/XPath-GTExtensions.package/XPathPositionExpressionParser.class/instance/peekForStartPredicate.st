parsing - peeking
peekForStartPredicate
	super peekForStartPredicate
		ifTrue: [
			handler handleStartPredicatePosition: self currentPosition.
			^ true]
		ifFalse: [^ false]