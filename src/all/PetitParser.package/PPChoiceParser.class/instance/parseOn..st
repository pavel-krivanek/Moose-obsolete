parsing
parseOn: aPPContext
	"This is optimized code that avoids unnecessary block activations, do not change. When all choices fail, the last failure is answered."

	| element |
	1 to: parsers size do: [ :index |
		element := (parsers at: index)
			parseOn: aPPContext.
		element isPetitFailure
			ifFalse: [ ^ element ] ].
	^ element