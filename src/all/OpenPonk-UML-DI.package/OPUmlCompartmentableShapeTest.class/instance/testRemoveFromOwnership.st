tests
testRemoveFromOwnership
	| lbl |
	(lbl := OPUmlLabel new) owningElement: element.
	self assert: element figures asArray equals: {lbl}.
	lbl remove.
	self assert: element figures isEmpty