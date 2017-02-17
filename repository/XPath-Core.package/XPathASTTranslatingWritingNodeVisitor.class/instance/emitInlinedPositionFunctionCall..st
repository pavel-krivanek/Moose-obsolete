private
emitInlinedPositionFunctionCall: aFunctionCall
	aFunctionCall hasArguments
		ifTrue: [self errorPositionFunctionTakesNoArguments].
	self
		emit: $(;
		emitAll: self contextPositionVariable;
		emitAll: ' ifNil:[1])'.