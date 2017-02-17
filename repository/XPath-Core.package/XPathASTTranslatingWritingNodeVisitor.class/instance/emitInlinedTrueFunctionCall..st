private
emitInlinedTrueFunctionCall: aFunctionCall
	aFunctionCall hasArguments
		ifTrue: [self errorTrueFunctionTakesNoArguments].
	self emitAll: '(true)'.