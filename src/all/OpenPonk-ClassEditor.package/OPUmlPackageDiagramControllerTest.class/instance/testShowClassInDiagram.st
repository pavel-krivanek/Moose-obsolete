tests
testShowClassInDiagram
	| class |
	class := OPUMLClass new.
	diagramController showModelInDiagram: class.
	self
		assert:
			(diagramController view elements
				anySatisfy: [ :each | each model isNotNil and: [ each model modelElement = class ] ])