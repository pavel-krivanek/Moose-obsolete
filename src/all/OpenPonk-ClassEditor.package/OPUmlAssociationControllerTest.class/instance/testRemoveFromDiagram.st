tests - diagram
testRemoveFromDiagram
	diagramController
		showModelInDiagram: element;
		showModelInDiagram: comment;
		showModelInDiagram: association.
	controller := diagramController controllerForModel: association.
	controller remove.
	self assert: diagramController view edges asArray equals: #()