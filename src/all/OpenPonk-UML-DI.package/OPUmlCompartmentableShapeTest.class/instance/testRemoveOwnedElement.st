tests
testRemoveOwnedElement
	| lbl |
	(lbl := OPUmlLabel new) owningElement: element.
	self assert: element figures asArray equals: {lbl}.
	lbl owningElement: nil.
	self assert: element figures isEmpty