parsing - peeking
peekForAbbreviatedDescendantStep
	(readStream peekFor: $/)
		ifFalse: [^ false].

	currentAxis axisSpecifier: 'descendant-or-self'.
	self startNodeTestForAnyNodeType.
	self peekForStep
		ifFalse: [self errorExpectedStep].
	^ true.