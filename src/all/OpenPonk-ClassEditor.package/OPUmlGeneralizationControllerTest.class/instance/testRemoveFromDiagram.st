tests - diagram
testRemoveFromDiagram
	diagramController
		showModelInDiagram: parent;
		showModelInDiagram: child.
	diagramController showModelInDiagram: generalization.
	controller := diagramController controllerForModel: generalization.
	controller remove.
	self assert: diagramController view edges asArray equals: #()