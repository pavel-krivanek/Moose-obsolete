parsing - peeking
peekForStep
	readStream skipSeparators.
	readStream atEnd
		ifTrue: [^ false].

	self peekForAbbreviatedStep
		ifTrue: [^ true].

	self peekForAxis.
	nodeTestParser parse
		ifTrue: [
			self peekForPredicates.
			handler handleEndStep.
			^ true]
		ifFalse: [
			currentAxis isImplicitAxis
				ifFalse: [self errorExpectedNodeTest].
			currentAxis beDefaultImplicitAxis.
			^ false].