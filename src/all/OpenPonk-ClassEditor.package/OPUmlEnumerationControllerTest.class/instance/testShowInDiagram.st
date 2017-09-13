tests - diagram
testShowInDiagram
	diagramController showModelInDiagram: model.
	self
		assert:
			(diagramController view elements
				anySatisfy: [ :each | each model isNotNil and: [ each model modelElement = model ] ])