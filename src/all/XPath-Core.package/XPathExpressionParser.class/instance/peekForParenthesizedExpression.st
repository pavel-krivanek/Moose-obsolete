parsing - peeking
peekForParenthesizedExpression
	(readStream peekFor: $()
		ifFalse: [^ false].

	self nextOrExpression.
	readStream skipSeparators.
	self expectNext: $).
	^ true.
