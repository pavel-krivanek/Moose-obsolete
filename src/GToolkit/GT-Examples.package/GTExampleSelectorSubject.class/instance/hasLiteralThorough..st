testing
hasLiteralThorough: aLiteral
	^ self selector = aLiteral
		or: [ self theClasses anySatisfy: [ :class |
			(class >> self selector) asGTExampleSubject hasLiteralThorough: aLiteral ] ]