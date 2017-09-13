tests - creation
testAddDiagramAsTargetForModel
	diagramController model: OPUMLPackage new.
	diagramController addAsTargetFor: controller.
	self assert: diagramController model packagedElements asArray equals: {controller model}