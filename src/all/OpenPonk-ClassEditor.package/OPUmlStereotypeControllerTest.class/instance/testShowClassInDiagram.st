tests - diagram
testShowClassInDiagram
	| class |
	class := self newEmptyModel.
	diagramController showModelInDiagram: class.
	self
		assert:
			(diagramController view elements
				anySatisfy: [ :each | each model isNotNil and: [ each model modelElement = class ] ])