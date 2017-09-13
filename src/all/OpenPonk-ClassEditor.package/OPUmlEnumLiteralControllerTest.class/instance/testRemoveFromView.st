tests - removing
testRemoveFromView
	| class compartment prop |
	class := OPUMLClass new.
	prop := OPUMLProperty new.
	class ownedAttributes add: prop.
	diagramController showModelInDiagram: class.
	controller := diagramController controllerForModel: prop.
	compartment := controller diagramElement owningElement.
	controller remove.
	self assert: compartment ownedElements asArray equals: #()