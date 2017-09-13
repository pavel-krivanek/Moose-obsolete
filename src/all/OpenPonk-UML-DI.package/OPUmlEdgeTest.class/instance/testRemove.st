tests
testRemove
	| lbl |
	(lbl := OPUmlLabel new) owningElement: element.
	self assert: element ownedElements asArray equals: {lbl}.
	lbl owningElement: nil.
	self assert: element ownedElements isEmpty