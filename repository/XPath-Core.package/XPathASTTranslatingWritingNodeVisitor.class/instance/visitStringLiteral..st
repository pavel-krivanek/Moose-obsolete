visiting - literals
visitStringLiteral: aStringLiteral
	self emitQuotedString: aStringLiteral string.
	^ aStringLiteral.