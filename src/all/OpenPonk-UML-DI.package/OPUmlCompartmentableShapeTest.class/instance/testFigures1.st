tests
testFigures1
	| lbl |
	(lbl := OPUmlLabel new) owningElement: element.

	self assert: element figures asArray equals: {lbl}