tests
testPropertyVisibility
	(property := OPUMLProperty new)
		name: 'op';
		visibility: OPUMLVisibilityKind protected.
	self assert: property notationString equals: '# op'