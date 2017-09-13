tests - removing
testRemoveFromView
	| class compartment op |
	class := OPUMLClass new.
	op := OPUMLOperation new.
	class ownedOperations add: op.
	diagramController showModelInDiagram: class.
	controller := diagramController controllerForModel: op.
	compartment := controller diagramElement owningElement.
	controller remove.
	self assert: compartment ownedElements asArray equals: #()