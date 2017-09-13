accessing
testSharedStyleIsInherited
	| a b |
	a := OPUmlDiagramElement new.
	(b := OPUmlDiagramElement new) owningElement: a.
	self assert: a style equals: nil.
	self assert: b style equals: nil.
	a sharedStyle: element.
	self assert: a style equals: element.
	self assert: b style equals: element