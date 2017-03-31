visiting - functions
visitFunctionCall: aFunctionCall
	"traverse in post-order"
	super visitFunctionCall: aFunctionCall.

	"these function calls are inlined by the translator, so we can infer their
	types during compilation, but all other functions can be dynamically
	rebound at runtime with XPathContext objects, so we don't infer them"
	(aFunctionCall isTrueFunctionCall
		or: [aFunctionCall isFalseFunctionCall])
		ifTrue: [aFunctionCall type: XPathBooleanValueType new]
		ifFalse: [
			(aFunctionCall isPositionFunctionCall
				or: [aFunctionCall isLastFunctionCall])
				ifTrue: [aFunctionCall type: XPathNumberValueType new]].
	^ aFunctionCall.