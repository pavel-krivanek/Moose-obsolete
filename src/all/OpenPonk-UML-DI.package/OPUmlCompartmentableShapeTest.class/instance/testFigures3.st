tests
testFigures3
	| lbl comp compLbl |
	(lbl := OPUmlLabel new) owningElement: element.
	(comp := OPUmlCompartment new) owningElement: element.
	(compLbl := OPUmlLabel new) owningElement: comp.

	self assert: element figures asArray equals: (Array with: lbl with: compLbl)