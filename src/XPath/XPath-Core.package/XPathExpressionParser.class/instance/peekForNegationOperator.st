parsing - peeking
peekForNegationOperator
	^ readStream
		skipSeparators;
		peekFor: $-