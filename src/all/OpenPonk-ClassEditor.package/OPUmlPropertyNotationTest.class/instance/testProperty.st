tests
testProperty
	(property := OPUMLProperty new) name: 'op'.
	self assert: property notationString equals: 'op'