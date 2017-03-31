testing
hasLiteralThorough: aLiteral
	^ self topic notNil 
		and: [ self topic contents notNil
			and: [ self topic contents includesSubstring: aLiteral asString caseSensitive: false ] ]