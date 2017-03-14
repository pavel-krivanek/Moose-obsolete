visiting - operators
visitSubtractionExpression: aSubtractionExpression
	"traverse in post-order"
	super visitSubtractionExpression: aSubtractionExpression.

	"subtraction of literals can be evaluated at compile time"
	aSubtractionExpression hasNonLiteralExpression
		ifTrue: [^ aSubtractionExpression]
		ifFalse: [
			^ XPathASTNumberLiteralNode number:
				aSubtractionExpression expression asXPathNumber -
					aSubtractionExpression otherExpression asXPathNumber].