tests
testOperationReturnTypeWithMultiplicity
	(operation := OPUMLOperation new)
		name: 'op';
		ownedParameters:
			{OPUMLParameter new
				type: (OPUMLClass new name: 'Thing');
				direction: OPUMLParameterDirectionKind return;
				lowerValue: (OPUMLLiteralInteger new value: 2);
				upperValue: (OPUMLLiteralUnlimitedNatural new value: 6)}.
	self assert: operation notationString equals: 'op() : Thing[2..6]'