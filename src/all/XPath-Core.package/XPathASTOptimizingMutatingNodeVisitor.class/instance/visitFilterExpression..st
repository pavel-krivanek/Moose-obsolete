visiting - location paths
visitFilterExpression: aFilterExpression
	"traverse in post-order"
	super visitFilterExpression: aFilterExpression.

	aFilterExpression hasPredicates
		ifFalse: [
			aFilterExpression type:
				aFilterExpression expression type].
	^ aFilterExpression.