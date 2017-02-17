parsing - peeking
peekForAdditionalSteps
	(self peekForAbbreviatedDescendantStep
		or: [self peekForStep])
		ifFalse: [^ false].
	[self peekForLocationPathSeparator]
		whileTrue: [
			(self peekForAbbreviatedDescendantStep
				or: [self peekForStep])
				ifFalse: [self errorExpectedStep]].
	^ true.