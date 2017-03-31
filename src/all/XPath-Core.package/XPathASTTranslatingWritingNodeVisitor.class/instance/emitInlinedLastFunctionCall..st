private
emitInlinedLastFunctionCall: aFunctionCall
	aFunctionCall hasArguments
		ifTrue: [self errorLastFunctionTakesNoArguments].
	self
		emit: $(;
		emitAll: self contextSizeVariable;
		emitAll: ' ifNil:[1])'.