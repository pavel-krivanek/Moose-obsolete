accessing
testSharedStyleOverriden
	| a b newStyle |
	a := OPUmlDiagramElement new.
	(b := OPUmlDiagramElement new) owningElement: a.
	a sharedStyle: element.
	self assert: a style equals: element.
	self assert: b style equals: element.
	newStyle := OPUmlStyle new.
	b localStyle: newStyle.
	self assert: b style equals: newStyle.
	self assert: b sharedStyle equals: element