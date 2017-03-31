parsing
nextFunctionCall
	handler handleStartFunctionCallPosition: self currentPosition + 1.
	super nextFunctionCall.
	handler handleEndFunctionCallPosition: self currentPosition.