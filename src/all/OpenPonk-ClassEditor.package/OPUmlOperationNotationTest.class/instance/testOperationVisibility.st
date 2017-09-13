tests
testOperationVisibility
	(operation := OPUMLOperation new)
		name: 'op';
		visibility: OPUMLVisibilityKind protected.
	self assert: operation notationString equals: '# op()'