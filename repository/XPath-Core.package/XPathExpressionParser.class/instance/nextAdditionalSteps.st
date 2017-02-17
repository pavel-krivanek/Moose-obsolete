parsing
nextAdditionalSteps
	self peekForAdditionalSteps
		ifFalse: [self errorExpectedStep]