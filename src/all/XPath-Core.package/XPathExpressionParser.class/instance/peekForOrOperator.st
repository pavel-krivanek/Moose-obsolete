parsing - peeking
peekForOrOperator
	^ readStream
		skipSeparators;
		nextMatchAll: 'or'