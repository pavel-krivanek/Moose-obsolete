parsing - peeking
peekForAdditiveOperator
	readStream skipSeparators.
	(readStream peekFor: $+)
		ifTrue: [
			handler handleAdditionOperator.
			^ true].
	(readStream peekFor: $-)
		ifTrue: [
			handler handleSubtractionOperator.
			^ true].
	^ false.