parsing - peeking
peekForArgumentSeparator
	readStream skipSeparators.
	^ readStream peekFor: $,.