statements-elements
expressionTerm
	^( 
	($( asPParser trim ,  selectStatement , $) asPParser trim) /
	($( asPParser trim ,  (expressionTerm / $) asPParser negate) star , $) asPParser trim) /
	(literalValue , ($( asPParser trim ,  (expressionTerm / $) asPParser negate) star , $) asPParser trim)) / "In the case we have a function invocation"
	(((literalValue , $. asPParser) min: 0 max: 2), literalValue)) flatten