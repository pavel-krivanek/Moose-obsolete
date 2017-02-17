parsing - peeking
peekForAndOperator
	^ readStream
		skipSeparators;
		nextMatchAll: 'and'