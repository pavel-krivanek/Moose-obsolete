tests
testPropertyModifiers
	(property := OPUMLProperty new)
		name: 'op';
		isReadOnly: true;
		isOrdered: true.
	self assert: property notationString equals: 'op {readOnly, ordered}'