visiting - literals
visitStringLiteral: aStringLiteral
	| quote |

	"use whichever quote char the string doesn't contain, but
	default to the double quote"
	quote :=
		(aStringLiteral string includes: $")
			ifTrue: [$']
			ifFalse: [$"].
	self
		emit: quote;
		emitAll: aStringLiteral string;
		emit: quote.
	^ aStringLiteral.