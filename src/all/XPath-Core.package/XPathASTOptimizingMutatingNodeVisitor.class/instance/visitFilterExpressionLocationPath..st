visiting - location paths
visitFilterExpressionLocationPath: aFilterExpressionLocationPath
	"traverse in post-order"
	super visitFilterExpressionLocationPath: aFilterExpressionLocationPath.

	aFilterExpressionLocationPath hasSteps
		ifFalse: [
			aFilterExpressionLocationPath type:
				aFilterExpressionLocationPath expression type].
	^ aFilterExpressionLocationPath.