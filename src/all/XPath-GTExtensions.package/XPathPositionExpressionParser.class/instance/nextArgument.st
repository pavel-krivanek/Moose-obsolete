parsing
nextArgument
	handler handleStartArgumentPosition: self currentPosition + 1.
	super nextArgument.
	handler handleEndArgumentPosition: self currentPosition.