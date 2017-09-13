tests
testParameter
	(parameter := OPUMLParameter new) name: 'param'.
	self assert: parameter notationString equals: 'param'