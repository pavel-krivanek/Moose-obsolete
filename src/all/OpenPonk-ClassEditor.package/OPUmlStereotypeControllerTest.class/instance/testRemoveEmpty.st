tests - removing
testRemoveEmpty
	| class |
	class := self newEmptyModel.
	controller model: class.
	diagramController addController: controller.
	controller showInDiagram: diagramController.
	controller remove.
	self assert: diagramController view elements asArray equals: #().
	self assert: diagramController controllers asArray equals: #()