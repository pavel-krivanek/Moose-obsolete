tests - diagram
testRemoveFromDiagram
	diagramController
		showModelInDiagram: artifact;
		showModelInDiagram: library;
		showModelInDiagram: extension.
	controller := diagramController controllerForModel: extension.
	controller remove.
	self assert: diagramController view edges asArray equals: #()