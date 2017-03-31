parsing - peeking
peekForAbbreviatedAxis
	(readStream peekFor: $@)
		ifTrue: [
			currentAxis axisSpecifier: 'attribute'.
			^ true]
		ifFalse: [^ false]