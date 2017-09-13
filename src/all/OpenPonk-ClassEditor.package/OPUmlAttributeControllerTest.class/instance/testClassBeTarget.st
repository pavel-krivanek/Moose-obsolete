tests - creation
testClassBeTarget
	| classController |
	classController := diagramController newControllerFor: OPUMLClass new.
	diagramController addController: classController.
	classController showInDiagram: diagramController.
	classController addAsTargetFor: controller.
	self assert: classController model ownedAttributes asArray equals: {controller model}