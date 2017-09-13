tests - diagram
testShowWithLiteralsInDiagram
	| literal |
	literal := OPUMLEnumerationLiteral new name: 'enumLiteral'.
	model ownedLiterals add: literal.
	diagramController showModelInDiagram: model.
	self
		assert:
			(diagramController view elements
				anySatisfy: [ :each | each model isNotNil and: [ each model modelElement = literal ] ])