tests - diagram
testShowInDiagram
	diagramController
		showModelInDiagram: parent;
		showModelInDiagram: child.
	diagramController showModelInDiagram: generalization.
	self
		assert:
			(diagramController view edges
				anySatisfy: [ :each | each model isNotNil and: [ each model modelElement = generalization ] ])