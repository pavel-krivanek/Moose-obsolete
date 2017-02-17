visiting - operators
visitNegationExpression: aNegationExpression
	"traverse in post-order"
	super visitNegationExpression: aNegationExpression.

	"the negation of a literal can be evaluated at compile time"
	aNegationExpression hasNonLiteralExpression
		ifTrue: [^ aNegationExpression]
		ifFalse: [
			^ XPathASTNumberLiteralNode number:
				aNegationExpression expression asXPathNumber negated].