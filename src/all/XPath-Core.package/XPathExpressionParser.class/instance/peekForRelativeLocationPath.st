parsing - peeking
peekForRelativeLocationPath
	currentAxis
		beDefaultImplicitAxis;
		beFirstAxis;
		beStartOfRelativeLocationPath.
	self peekForStep
		ifFalse: [^ false].
	self peekForLocationPathSeparator
		ifTrue: [self nextAdditionalSteps].
	handler handleEndLocationPath.
	^ true.