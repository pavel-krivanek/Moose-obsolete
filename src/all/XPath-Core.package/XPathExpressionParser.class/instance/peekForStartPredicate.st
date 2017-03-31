parsing - peeking
peekForStartPredicate
	^ readStream
		skipSeparators;
		peekFor: $[