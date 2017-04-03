visiting - literals
visitStringLiteral: aStringLiteral
	highlighter startStringLiteralHighlightPosition: self startPosition.
	super visitStringLiteral: aStringLiteral.
	highlighter endStringLiteralHighlightPosition: self endPosition.
	^ aStringLiteral.