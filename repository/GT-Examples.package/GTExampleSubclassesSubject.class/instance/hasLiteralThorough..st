testing
hasLiteralThorough: aLiteral
	^ (super hasLiteralThorough: aLiteral)
		or: [ self theSubclasses anySatisfy: [ :class | 
				class asGTExampleSubject hasLiteralThorough: aLiteral ] ]