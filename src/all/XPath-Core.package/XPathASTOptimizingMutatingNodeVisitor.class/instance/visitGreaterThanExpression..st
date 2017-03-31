visiting - operators
visitGreaterThanExpression: aGreaterThanExpression
	"traverse in post-order"
	super visitGreaterThanExpression: aGreaterThanExpression.

	"greater than comparisons of literals can be evaluated at compile time"
	aGreaterThanExpression hasNonLiteralExpression
		ifTrue: [^ aGreaterThanExpression]
		ifFalse: [
			^ self newFunctionCallForBoolean:
				aGreaterThanExpression expression asXPathNumber >
					aGreaterThanExpression otherExpression asXPathNumber].