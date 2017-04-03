visiting - literals
visitNumberLiteral: aNumberLiteral
	highlighter startNumberLiteralHighlightPosition: self startPosition.
	super visitNumberLiteral: aNumberLiteral.
	highlighter endNumberLiteralHighlightPosition: self endPosition.
	^ aNumberLiteral.