parsing - peeking
peekForEndPredicate
	^ readStream
		skipSeparators;
		peekFor: $]