tests
testFigures2
	| lbl comp1 |
	(lbl := OPUmlLabel new) owningElement: element.
	(comp1 := OPUmlCompartment new) owningElement: element.

	self assert: element figures asArray equals: {lbl}