tests
testDescriptionAccessorRead
	| accessor model |
	accessor := controller descriptionAccessor: #isDerived.
	model := OPUMLProperty new.
	model isDerived: true.
	controller model: model.
	self assert: (accessor read: controller).
	model isDerived: false.
	self deny: (accessor read: controller)