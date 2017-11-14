visiting - operators
visitOrExpression: anOrExpression
	"traverse in post-order"
	super visitOrExpression: anOrExpression.

	"the 'or' of literals can be evaluated at compile time"
	anOrExpression hasNonLiteralExpression
		ifTrue: [^ anOrExpression]
		ifFalse: [
			^ self newFunctionCallForBoolean:
				(anOrExpression expression asXPathBoolean
					or: [anOrExpression otherExpression asXPathBoolean])]