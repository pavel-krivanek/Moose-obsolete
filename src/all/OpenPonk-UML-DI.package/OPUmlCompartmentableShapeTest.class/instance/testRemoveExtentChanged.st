tests
testRemoveExtentChanged
	| compartment compLbl view fullExtent |
	OPUmlNameLabel new owningElement: element.
	compartment := OPUmlCompartment new.
	compartment owningElement: element.
	5 timesRepeat: [ (compLbl := OPUmlLabel new) owningElement: compartment ].
	view := RTView new.
	element renderIn: view.
	fullExtent := element extent.
	compLbl remove.
	self assert: element extent y < fullExtent y