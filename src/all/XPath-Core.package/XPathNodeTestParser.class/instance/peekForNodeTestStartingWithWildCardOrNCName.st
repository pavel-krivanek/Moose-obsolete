parsing - peeking
peekForNodeTestStartingWithWildCardOrNCName
	readStream skipSeparators.
	(readStream atEnd not
		and: [self peekForNodeTestStartingWithWildCard
			or: [self peekForNodeTestStartingWithNCName]])
		ifTrue: [^ true]
		ifFalse: [
			self nextEmptyTest.
			^ false]