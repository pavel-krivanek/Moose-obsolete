tests
testParameterTypeExpressionWithMultiplicity
	(parameter := OPUMLParameter new)
		name: 'param';
		type: (OPUMLClass new name: 'String');
		lowerValue: (OPUMLLiteralInteger new value: 3);
		upperValue: (OPUMLLiteralUnlimitedNatural new value: '*').
	self assert: parameter notationString equals: 'param : String[3..*]'