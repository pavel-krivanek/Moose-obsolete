tests
testPropertyDefaultValue
	(property := OPUMLProperty new)
		name: 'op';
		defaultValue: (OPUMLOpaqueExpression new bodies: {'abc'}).
	self assert: property notationString equals: 'op = abc'