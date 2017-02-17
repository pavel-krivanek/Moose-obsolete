grammar-expressions
unaryNegationExpression
	^ ((self tokenFor: '~') / (self tokenFor: '!')), unaryExpression