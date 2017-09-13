tests
testParameterTypeExpression
	(parameter := OPUMLParameter new)
		name: 'param';
		type: (OPUMLClass new name: 'String').
	self assert: parameter notationString equals: 'param : String'