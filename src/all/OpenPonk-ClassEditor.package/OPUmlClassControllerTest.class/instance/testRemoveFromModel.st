tests - removing
testRemoveFromModel
	| class |
	class := OPUMLClass new.
	diagramController model: OPUMLPackage new.
	diagramController model packagedElements add: class.
	diagramController showModelInDiagram: class.
	controller := diagramController controllerForModel: class.
	controller removeModel.
	self assert: diagramController view elements asArray equals: #().
	self assert: diagramController model packagedElements asArray equals: #().
	self assert: diagramController controllers asArray equals: #()