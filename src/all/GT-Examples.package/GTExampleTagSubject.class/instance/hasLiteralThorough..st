testing
hasLiteralThorough: aLiteral
	^ self theTagName = aLiteral
		or: [ self exists
			and: [ self theTag categoryName = aLiteral ] ]