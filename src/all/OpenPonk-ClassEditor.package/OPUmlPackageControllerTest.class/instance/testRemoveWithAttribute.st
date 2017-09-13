tests - removing
testRemoveWithAttribute
	| class |
	class := OPUMLClass new.
	class ownedAttributes add: OPUMLProperty new.
	controller model: class.
	diagramController addController: controller.
	controller showInDiagram: diagramController.
	controller remove.
	self assert: diagramController view elements asArray equals: #().
	self assert: diagramController controllers asArray equals: #()