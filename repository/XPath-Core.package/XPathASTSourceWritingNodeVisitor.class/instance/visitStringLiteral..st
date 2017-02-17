visiting - literals
visitStringLiteral: aStringLiteral
	| quote |

	quote :=
		(aStringLiteral string includes: $")
			ifTrue: [$']
			ifFalse: [$"].
	self
		emit: quote;
		emitAll: aStringLiteral string;
		emit: quote.
	^ aStringLiteral.