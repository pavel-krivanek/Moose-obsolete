initialization
initializeColors
	super initializeColors.
	self
		initializePredicateColors;
		axisColor: self defaults defaultAxisColor;
		nodeTestColor: self defaults defaultNodeTestColor;
		predicatePrimaryColor: self defaults defaultPredicatePrimaryColor;
		predicateSecondaryColor: self defaults defaultPredicateSecondaryColor;
		predicateTertiaryColor: self defaults defaultPredicateTertiaryColor;
		operatorColor: self defaults defaultOperatorColor;
		functionCallColor: self defaults defaultFunctionCallColor;
		stringLiteralColor: self defaults defaultStringLiteralColor;
		numberLiteralColor: self defaults defaultNumberLiteralColor;
		variableReferenceColor: self defaults defaultVariableReferenceColor.