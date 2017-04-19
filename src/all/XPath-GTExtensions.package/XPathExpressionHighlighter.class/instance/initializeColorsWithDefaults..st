initialization
initializeColorsWithDefaults: aDefaults
	super initializeColorsWithDefaults: aDefaults.

	self
		initializePredicateColors;
		axisColor: aDefaults axisColor;
		nodeTestColor: aDefaults nodeTestColor;
		predicateLevelOneColor: aDefaults predicateLevelOneColor;
		predicateLevelTwoColor: aDefaults predicateLevelTwoColor;
		predicateLevelThreeColor: aDefaults predicateLevelThreeColor;
		predicateLevelFourColor: aDefaults predicateLevelFourColor;
		predicateLevelFiveColor: aDefaults predicateLevelFiveColor;
		predicateLevelSixColor: aDefaults predicateLevelSixColor;
		operatorColor: aDefaults operatorColor;
		functionCallColor: aDefaults functionCallColor;
		stringLiteralColor: aDefaults stringLiteralColor;
		numberLiteralColor: aDefaults numberLiteralColor;
		variableReferenceColor: aDefaults variableReferenceColor.