constraints
defaultConstraint
	"http://www.sqlite.org/syntaxdiagrams.html#column-constraint"
	"Added ENABLE after NOT NULL to cover a column constraint from some sql dialects"
	
	^default , ( signedNumber / literalValue / expressionInRoundParentheses )