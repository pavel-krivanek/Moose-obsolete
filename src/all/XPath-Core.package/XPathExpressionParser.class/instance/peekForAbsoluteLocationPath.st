parsing - peeking
peekForAbsoluteLocationPath
	self peekForLocationPathSeparator
		ifFalse: [^ false].

	handler handleStartAbsoluteLocationPath.
	currentAxis
		beDefaultImplicitAxis;
		beFirstAxis.
	self peekForAdditionalSteps
		ifFalse: [
			currentAxis axisSpecifier: 'self'.
			self startNodeTestForAnyNodeType].
	handler handleEndLocationPath.
	^ true.