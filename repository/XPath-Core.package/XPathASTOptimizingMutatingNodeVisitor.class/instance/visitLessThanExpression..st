visiting - operators
visitLessThanExpression: aLessThanExpression
	"traverse in post-order"
	super visitLessThanExpression: aLessThanExpression.

	"less than comparisons of literals can be evaluated at compile time"
	aLessThanExpression hasNonLiteralExpression
		ifTrue: [^ aLessThanExpression]
		ifFalse: [
			^ self newFunctionCallForBoolean:
				aLessThanExpression expression asXPathNumber <
					aLessThanExpression otherExpression asXPathNumber].