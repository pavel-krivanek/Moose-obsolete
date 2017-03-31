parsing
nextArgument
	hasUnboundedArgument
		ifTrue: [self errorArgumentAfterUnboundedArgument].

	readStream skipSeparators.
	self nextModifierForArgument: self nextName.