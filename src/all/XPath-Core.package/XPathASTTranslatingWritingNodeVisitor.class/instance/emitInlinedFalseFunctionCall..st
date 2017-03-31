private
emitInlinedFalseFunctionCall: aFunctionCall
	aFunctionCall hasArguments
		ifTrue: [self errorFalseFunctionTakesNoArguments].
	self emitAll: '(false)'.