tests
testDescriptionAccessorWrite
	| accessor model |
	accessor := controller descriptionAccessor: #isDerived.
	model := OPUMLProperty new.
	controller model: model.
	accessor write: true to: controller.
	self assert: model isDerived.
	accessor write: false to: controller.
	self deny: model isDerived