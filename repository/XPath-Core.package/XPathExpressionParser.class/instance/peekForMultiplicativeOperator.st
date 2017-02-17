parsing - peeking
peekForMultiplicativeOperator
	readStream skipSeparators.
	readStream atEnd
		ifTrue: [^ false].
	(readStream peekFor: $*)
		ifTrue: [
			handler handleMultiplicationOperator.
			^ true].
	(readStream nextMatchAll: 'div')
		ifTrue: [
			handler handleDivisionOperator.
			^ true].
	(readStream nextMatchAll: 'mod')
		ifTrue: [
			handler handleModulusOperator.
			^ true].
	^ false.