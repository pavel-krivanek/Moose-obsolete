tests - creation
testEnumerationBeTarget
	| classController |
	classController := diagramController newControllerFor: OPUMLEnumeration new.
	diagramController addController: classController.
	classController showInDiagram: diagramController.
	classController addAsTargetFor: controller.
	self assert: classController model ownedLiterals asArray equals: {controller model}