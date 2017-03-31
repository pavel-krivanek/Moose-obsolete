parsing - peeking
peekForUnionOperator
	readStream skipSeparators.
	(readStream peekFor: $|)
		ifTrue: [
			handler handleUnionOperator.
			^ true]
		ifFalse: [^ false]