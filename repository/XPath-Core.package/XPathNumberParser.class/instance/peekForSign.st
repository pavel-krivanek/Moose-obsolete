parsing
peekForSign
	(readStream peekFor: $-)
		ifTrue: [handler handleNegativeSign]
		ifFalse: [
			readStream peekFor: $+.
			handler handlePositiveSign]