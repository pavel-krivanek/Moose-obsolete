parsing - peeking
peekForEndArgumentList
	readStream skipSeparators.
	^ readStream peekFor: $).