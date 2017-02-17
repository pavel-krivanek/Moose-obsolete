private
startNodeTestForAnyNodeType
	currentAxis isStartOfRelativeLocationPath
		ifTrue: [handler handleStartRelativeLocationPath].
	handler
		handleStartStep;
		perform: currentAxis handlerSelector;
		handleAnyNodeTest;
		handleEndStep.
	currentAxis beDefaultImplicitAxis.