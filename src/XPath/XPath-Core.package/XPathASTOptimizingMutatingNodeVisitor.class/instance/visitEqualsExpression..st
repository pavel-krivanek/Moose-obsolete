visiting - operators
visitEqualsExpression: anEqualsExpression
	"traverse in post-order"
	super visitEqualsExpression: anEqualsExpression.

	"equality comparisons of literals can be evaluated at compile time"
	anEqualsExpression hasNonLiteralExpression
		ifTrue: [
			"predicate expressions like 'position()=10' and '10=position()'
			can be replaced with number literals like '10' which are easier
			to optimize"
			(anEqualsExpression hasParent
				and: [anEqualsExpression parent isPredicate])
				ifTrue: [
					anEqualsExpression expression isNumberLiteral
						ifTrue: [
							(anEqualsExpression otherExpression isFunctionCall
								and: [
									anEqualsExpression otherExpression
										isPositionFunctionCall])
								ifTrue: [^ anEqualsExpression expression]]
						ifFalse: [
							anEqualsExpression otherExpression isNumberLiteral
								ifTrue: [
									(anEqualsExpression expression isFunctionCall
										and: [
											anEqualsExpression expression
												isPositionFunctionCall])
										ifTrue: [^ anEqualsExpression otherExpression]]]].
			^ anEqualsExpression]
		ifFalse: [
			"When neither object ... is a node-set and the operator is = or != ...
			if at least one object ... is a number, then each ... is converted to
			a number ... Otherwise, both ... are converted to strings"
			(anEqualsExpression hasNumberLiteralExpression
				ifTrue: [
					^ self newFunctionCallForBoolean:
						anEqualsExpression expression asXPathNumber =
							anEqualsExpression otherExpression asXPathNumber]
				ifFalse: [
					^ self newFunctionCallForBoolean:
						anEqualsExpression expression asXPathString =
							anEqualsExpression otherExpression asXPathString])].