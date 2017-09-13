tests
testClassBeTarget
	| sourceController targetController |
	sourceController := diagramController newControllerFor: (OPUMLStereotype new name: 'A').
	targetController := diagramController newControllerFor: (OPUMLClass new name: 'B').
	diagramController
		addController: sourceController;
		addController: targetController.
	sourceController showInDiagram: diagramController.
	targetController showInDiagram: diagramController.
	sourceController addAsSourceFor: controller.
	targetController addAsTargetFor: controller.
	self assert: (controller model memberEnds collect: #name) asArray equals: #(base_B extension_A).
	self
		assert: controller model memberEnds first owningClass
		equals: sourceController model.
	self assert: controller model memberEnds second owningClass equals: nil