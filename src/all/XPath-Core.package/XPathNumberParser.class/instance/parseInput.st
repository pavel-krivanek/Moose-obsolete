parsing
parseInput
	readStream skipSeparators.
	self peekForSign.
	(readStream peekFor: $.)
		ifTrue: [
			handler handleIntegerPart: 0.
			self nextFractionPartOptional: false]
		ifFalse: [
			self nextIntegerPart.
			(readStream peekFor: $.)
				ifTrue: [self nextFractionPartOptional: true]
				ifFalse: [handler handleFractionPart: 0]].