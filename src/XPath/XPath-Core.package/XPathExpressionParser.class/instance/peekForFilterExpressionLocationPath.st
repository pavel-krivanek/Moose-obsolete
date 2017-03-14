parsing - peeking
peekForFilterExpressionLocationPath
	self peekForLocationPathSeparator
		ifTrue: [
			handler handleStartFilterExpressionLocationPath.
			self nextAdditionalSteps.
			handler handleEndLocationPath.
			^ true]
		ifFalse: [^ false]