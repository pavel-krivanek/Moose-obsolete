parsing
nextPathExpression
	handler handleStartPathExpression.
	self peekForLocationPathExpression
		ifFalse: [
			self nextFilterExpression.
			self peekForLocationPathSeparator
				ifTrue: [
					handler handleStartFilterExpressionLocationPath.
					self nextAdditionalSteps.
					handler handleEndLocationPath]].
	handler handleEndPathExpression.