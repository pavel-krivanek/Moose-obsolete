tests
testParameterDirectionIn
	(parameter := OPUMLParameter new)
		name: 'param';
		direction: OPUMLParameterDirectionKind in.
	self assert: parameter notationString equals: 'param'