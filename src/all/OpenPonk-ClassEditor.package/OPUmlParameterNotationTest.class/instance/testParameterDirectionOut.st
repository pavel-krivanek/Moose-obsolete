tests
testParameterDirectionOut
	(parameter := OPUMLParameter new)
		name: 'param';
		direction: OPUMLParameterDirectionKind out.
	self assert: parameter notationString equals: 'out param'