tests
testOperationParameters
	(operation := OPUMLOperation new)
		name: 'op';
		ownedParameters:
			{OPUMLParameter new name: 'first'.
			OPUMLParameter new name: 'second'}.
	self assert: operation notationString equals: 'op(first, second)'