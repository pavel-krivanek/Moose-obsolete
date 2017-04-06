initialization
initializeColors
	super initializeColors.
	self
		initializePredicateColors;
		axisColor: self defaults defaultAxisColor;
		nodeTestColor: self defaults defaultNodeTestColor;
		predicateLevelOneColor: self defaults defaultPredicateLevelOneColor;
		predicateLevelTwoColor: self defaults defaultPredicateLevelTwoColor;
		predicateLevelThreeColor: self defaults defaultPredicateLevelThreeColor;
		predicateLevelFourColor: self defaults defaultPredicateLevelFourColor;
		predicateLevelFiveColor: self defaults defaultPredicateLevelFiveColor;
		predicateLevelSixColor: self defaults defaultPredicateLevelSixColor;
		operatorColor: self defaults defaultOperatorColor;
		functionCallColor: self defaults defaultFunctionCallColor;
		stringLiteralColor: self defaults defaultStringLiteralColor;
		numberLiteralColor: self defaults defaultNumberLiteralColor;
		variableReferenceColor: self defaults defaultVariableReferenceColor.