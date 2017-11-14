visiting - operators
visitAndExpression: anAndExpression
	"traverse in post-order"
	super visitAndExpression: anAndExpression.

	"the 'and' of literals can be evaluated at compile time"
	anAndExpression hasNonLiteralExpression
		ifTrue: [^ anAndExpression]
		ifFalse: [
			^ self newFunctionCallForBoolean:
				(anAndExpression expression asXPathBoolean
					and: [anAndExpression otherExpression asXPathBoolean])]