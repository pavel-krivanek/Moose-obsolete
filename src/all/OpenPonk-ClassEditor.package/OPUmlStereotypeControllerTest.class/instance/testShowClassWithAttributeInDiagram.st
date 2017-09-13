tests - diagram
testShowClassWithAttributeInDiagram
	| class prop |
	class := self newEmptyModel.
	prop := OPUMLProperty new.
	class ownedAttributes add: prop.
	diagramController showModelInDiagram: class.
	self
		assert:
			(diagramController view elements
				anySatisfy: [ :each | each model isNotNil and: [ each model modelElement = prop ] ])