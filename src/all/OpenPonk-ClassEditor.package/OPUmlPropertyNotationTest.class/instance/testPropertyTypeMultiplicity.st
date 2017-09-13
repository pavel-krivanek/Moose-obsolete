tests
testPropertyTypeMultiplicity
	(property := OPUMLProperty new)
		name: 'op';
		type: (OPUMLClass new name: 'Thing');
		lowerValue: (OPUMLLiteralInteger new value: 12);
		upperValue: (OPUMLLiteralUnlimitedNatural new value: '*').
	self assert: property notationString equals: 'op : Thing[12..*]'