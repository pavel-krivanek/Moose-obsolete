tests
testParameterDirectionInOut
	(parameter := OPUMLParameter new)
		name: 'param';
		direction: OPUMLParameterDirectionKind inout.
	self assert: parameter notationString equals: 'inout param'