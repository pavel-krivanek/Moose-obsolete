visiting - operators
visitLessThanOrEqualToExpression: aLessThanOrEqualToExpression
	"traverse in post-order"
	super visitLessThanOrEqualToExpression: aLessThanOrEqualToExpression.

	"less than or equal to comparisons of literals can be evaluated at
	compile time"
	aLessThanOrEqualToExpression hasNonLiteralExpression
		ifTrue: [^ aLessThanOrEqualToExpression]
		ifFalse: [
			^ self newFunctionCallForBoolean:
				aLessThanOrEqualToExpression expression asXPathNumber <=
					aLessThanOrEqualToExpression otherExpression asXPathNumber].