testing
hasLiteralThorough: aLiteral
	^ self text = aLiteral
		or: [ self text includesSubstring: aLiteral asString caseSensitive: false ]