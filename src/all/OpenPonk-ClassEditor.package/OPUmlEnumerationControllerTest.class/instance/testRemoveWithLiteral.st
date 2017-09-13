tests - removing
testRemoveWithLiteral
	model ownedLiterals add: OPUMLEnumerationLiteral new.
	controller model: model.
	diagramController addController: controller.
	controller showInDiagram: diagramController.
	controller remove.
	self assert: diagramController view elements asArray equals: #().
	self assert: diagramController controllers asArray equals: #()