accessing
testPropertyInheritance
	| a b aStyle bShared bLocal |
	a := OPUmlDiagramElement new.
	(b := OPUmlDiagramElement new) owningElement: a.
	(aStyle := OPUmlStyle new) fontSize: 15.
	a sharedStyle: aStyle.
	self assert: b style fontSize equals: 15.
	bShared := OPUmlStyle new.
	b sharedStyle: bShared.
	self assert: b style fontSize equals: 15.
	bShared fontSize: 20.
	self assert: b style fontSize equals: 20.
	bLocal := OPUmlStyle new.
	b localStyle: bLocal.
	self assert: b style fontSize equals: 20.
	bLocal fontSize: 25.
	self assert: b style fontSize equals: 25.
	bLocal removeKey: #fontSize.
	self assert: b style fontSize equals: 20.
	bShared removeKey: #fontSize.
	self assert: b style fontSize equals: 15