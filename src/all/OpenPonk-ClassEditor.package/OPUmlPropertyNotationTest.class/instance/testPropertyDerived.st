tests
testPropertyDerived
	(property := OPUMLProperty new)
		name: 'op';
		isDerived: true.
	self assert: property notationString equals: '/op'