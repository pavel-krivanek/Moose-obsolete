visiting - operators
visitNotEqualsExpression: anNotEqualsExpression
	"traverse in post-order"
	super visitNotEqualsExpression: anNotEqualsExpression.

	"inequality comparisons of literals can be evaluated at compile time"
	anNotEqualsExpression hasNonLiteralExpression
		ifTrue: [^ anNotEqualsExpression]
		ifFalse: [
			"When neither object ... is a node-set and the operator is = or != ...
			if at least one object ... is a number, then each ... is converted to
			a number ... Otherwise, both ... are converted to strings"
			anNotEqualsExpression hasNumberLiteralExpression
				ifTrue: [
					^ self newFunctionCallForBoolean:
						anNotEqualsExpression expression asXPathNumber ~=
							anNotEqualsExpression otherExpression asXPathNumber]
				ifFalse: [
					^ self newFunctionCallForBoolean:
						anNotEqualsExpression expression asXPathString ~=
							anNotEqualsExpression otherExpression asXPathString]].