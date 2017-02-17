testing
hasLiteralThorough: aLiteral
	^ self keyword = aLiteral
		or: [ self keyword asString asLowercase = aLiteral asString asLowercase ]