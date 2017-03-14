parsing - peeking
peekForEndPredicate
	super peekForEndPredicate
		ifTrue: [
			handler handleEndPredicatePosition: self currentPosition.
			^ true]
		ifFalse: [^ false]