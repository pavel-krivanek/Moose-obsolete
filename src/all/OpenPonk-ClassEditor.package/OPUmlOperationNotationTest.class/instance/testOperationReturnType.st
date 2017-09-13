tests
testOperationReturnType
	(operation := OPUMLOperation new)
		name: 'op';
		ownedParameters:
			{OPUMLParameter new
				type: (OPUMLClass new name: 'Thing');
				direction: OPUMLParameterDirectionKind return}.
	self assert: operation notationString equals: 'op() : Thing'