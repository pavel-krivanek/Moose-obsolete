tests
testRemoveFromViewRich
	| view lbl comp compLbl |
	element := OPUmlClassifierShape new.
	lbl := OPUmlNameLabel new.
	lbl owningElement: element.
	comp := OPUmlCompartment new.
	comp owningElement: element.
	(compLbl := OPUmlLabel new) owningElement: comp.
	view := RTView new.
	element renderIn: view.
	element remove.
	self assert: view elements asArray equals: #()