tests - creation
testAddDiagramAsTargetForClass
	diagramController addAsTargetFor: controller.
	self assert: diagramController model packagedElements asArray equals: {controller model}