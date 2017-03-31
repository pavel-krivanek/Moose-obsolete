visiting - operators
visitMultiplicationExpression: aMultiplicationExpression
	"traverse in post-order"
	super visitMultiplicationExpression: aMultiplicationExpression.

	"multiplication of literals can be evaluated at compile time"
	aMultiplicationExpression hasNonLiteralExpression
		ifTrue: [^ aMultiplicationExpression]
		ifFalse: [
			^ XPathASTNumberLiteralNode number:
				aMultiplicationExpression expression asXPathNumber *
					aMultiplicationExpression otherExpression asXPathNumber]