parsing - peeking
peekForRelationalOperator
	readStream skipSeparators.
	(readStream peekFor: $<)
		ifTrue: [
			(readStream peekFor: $=)
				ifTrue: [handler handleLessThanOrEqualToOperator]
				ifFalse: [handler handleLessThanOperator].
			^ true].
	(readStream peekFor: $>)
		ifTrue: [
			(readStream peekFor: $=)
				ifTrue: [handler handleGreaterThanOrEqualToOperator]
				ifFalse: [handler handleGreaterThanOperator].
			^ true].
	^ false.