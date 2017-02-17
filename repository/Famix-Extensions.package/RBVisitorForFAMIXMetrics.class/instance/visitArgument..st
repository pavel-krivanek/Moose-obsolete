enumerating
visitArgument: each
	
	methodComplexity := methodComplexity + parameterComplexityMultiplier.
	^super visitArgument: each