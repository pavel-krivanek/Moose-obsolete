parsing - peeking
peekForNodeTest
	readStream skipSeparators.
	(readStream atEnd not
		and: [self peekForWildCardNameTest
			or: [self peekForNonWildCardNameTest]])
		ifTrue: [^ true]
		ifFalse: [
			self nextEmptyTest.
			^ false]