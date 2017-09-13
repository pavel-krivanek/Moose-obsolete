tests
testRemoveFromView
	| lbl v |
	(lbl := OPUmlLabel new) owningElement: element.
	v := RTView new.
	element renderIn: v.
	lbl renderIn: v.
	self assert: v edges size equals: 1.
	self assert: v elements size equals: 1.
	element remove.
	self assert: v edges size equals: 0.
	self assert: v elements size equals: 0