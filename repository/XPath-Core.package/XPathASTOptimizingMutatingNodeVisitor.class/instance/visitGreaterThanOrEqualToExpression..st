visiting - operators
visitGreaterThanOrEqualToExpression: aGreaterThanOrEqualToExpression
	"traverse in post-order"
	super visitGreaterThanOrEqualToExpression: aGreaterThanOrEqualToExpression.

	"greater than or equal to comparisons of literals can be evaluated at
	compile time"
	aGreaterThanOrEqualToExpression hasNonLiteralExpression
		ifTrue: [^ aGreaterThanOrEqualToExpression]
		ifFalse: [
			^ self newFunctionCallForBoolean:
				aGreaterThanOrEqualToExpression expression asXPathNumber >=
					aGreaterThanOrEqualToExpression otherExpression asXPathNumber].