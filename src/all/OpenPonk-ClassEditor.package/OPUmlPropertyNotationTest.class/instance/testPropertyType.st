tests
testPropertyType
	(property := OPUMLProperty new)
		name: 'op';
		type: (OPUMLClass new name: 'Thing').
	self assert: property notationString equals: 'op : Thing'