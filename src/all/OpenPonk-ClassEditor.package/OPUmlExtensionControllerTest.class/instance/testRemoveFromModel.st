tests - model
testRemoveFromModel
	diagramController
		showModelInDiagram: artifact;
		showModelInDiagram: library;
		showModelInDiagram: extension.
	controller := diagramController controllerForModel: extension.
	controller removeModel.
	self assert: extensionLibrary association equals: nil.
	self assert: extensionLibrary owningClass equals: nil.
	self assert: library attributes asArray equals: #()