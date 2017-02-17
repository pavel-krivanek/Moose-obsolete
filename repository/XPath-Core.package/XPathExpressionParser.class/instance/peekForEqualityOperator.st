parsing - peeking
peekForEqualityOperator
	readStream skipSeparators.
	(readStream nextMatchAll: '!=')
		ifTrue: [
			handler handleNotEqualsOperator.
			^ true].
	(readStream peekFor: $=)
		ifTrue: [
			handler handleEqualsOperator.
			^ true].
	^ false.