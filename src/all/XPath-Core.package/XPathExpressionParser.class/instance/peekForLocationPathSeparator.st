parsing - peeking
peekForLocationPathSeparator
	^ readStream
		skipSeparators;
		peekFor: $/