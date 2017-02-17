parsing - peeking
peekForStartArgumentList
	readStream skipSeparators.
	^ readStream peekFor: $(.