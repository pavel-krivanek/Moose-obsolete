tests
testShowInDiagram
	diagramController
		showModelInDiagram: artifact;
		showModelInDiagram: library;
		showModelInDiagram: extension.
	self
		assert:
			(diagramController view edges
				anySatisfy: [ :each | each model isNotNil and: [ each model modelElement = extension ] ])